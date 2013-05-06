#!/perl

use strict;
use warnings;

use Test::More;
use File::Which;
use File::Find;
use JSON::XS;
use File::Slurp;

my $test_cfg_file = shift;
my $test_dir = shift;

my $valgrind = File::Which::which('valgrind');
my $cfg = JSON::XS::decode_json( File::Slurp::read_file($test_cfg_file));

walk( $test_dir, \&run_tests );
done_testing();
exit;


sub run_tests
{
	my($path) = shift;
	my($name) = $path =~ m/\/+(.*?)$/;
	unless(exists $cfg->{$name})
	{
		print "Found test, $path, but $name doesn't exist in test config...Skipping\n";
		return;
	}
	my $test_cfg = $cfg->{$name};
	my $test_args = exists $test_cfg->{args} ? $test_cfg->{args} : undef;
	unless(exists $test_cfg->{expected} or exists $test_cfg->{regex_expected})
	{
		print "Found test with $name but no 'expected' or 'regex_expected' is set...Skipping\n";
		return;
	}
	my $cmdline = $path;
	$cmdline .= " $test_args" if defined $test_args;
	&basic_test($cmdline,$test_cfg);
}

sub basic_test
{
	my($cmdline, $test_cfg) = @_;
	return unless exists $test_cfg->{expected} or exists $test_cfg->{regex_expected};
	my $test_name = $test_cfg->{name};
	my $got = &trim(join '',`$cmdline`);
	if(exists $test_cfg->{regex_expected})
	{
		like($got, $test_cfg->{regex_expected} , $test_name);
	}
	else
	{
		is($got, &trim($test_cfg->{expected}) , $test_name);
	}
}

sub valgrind_test
{
	my($cmdline, $test_cfg) = @_;
	return unless defined $valgrind;
	return unless exists $test_cfg->{expected} or exists $test_cfg->{regex_expected};
	my $test_name = $test_cfg->{name} . ' Valgrind';
	my $got = &trim(join '',`$valgrind --leak-check=full $cmdline`);
	if(exists $test_cfg->{regex_expected})
	{
		like($got, $test_cfg->{regex_expected} , $test_name);
	}
	else
	{
		is($got, &trim($test_cfg->{expected}) , $test_name);
	}
}


sub trim
{
	my $s = shift;
	$s =~ s/^\s+//;
	$s =~ s/\s+$//mg;
	$s
}

sub walk
{
	my($dir,$callback) = @_;
	$dir =~ s/\/$//; ## Remove trailing slash because we'll be adding one in `map` below
	opendir D,$dir || die "Can't opendir $dir, $!\n";
	my @entries = map{"$dir/$_"} grep !/^\./, readdir D;
	my @bins;
	my @dirs;
	for(@entries)
	{
		if( -d $_ )
		{
			push @dirs,$_;
		}
		elsif( -B $_ and -X $_ and (not -l $_) )
		{
			push @bins,$_;
		}
	}
	closedir D;
	$callback->($_) for sort @bins;
	&walk($callback,$_) for sort @dirs;
}
