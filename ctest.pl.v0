#!/perl

use strict;
use warnings;

use Test::More;
use File::Which;
use JSON::XS;
$|++;

my $test_dir = shift;

my $valgrind = File::Which::which('valgrind');
my $cfg_file = 'scripts/test.json';
my $cfg = &init_cfg($cfg_file);
&make_cfg($cfg,$test_dir,\&add_callback,\&run_tests);
&save_cfg($cfg,$cfg_file);
#walk( $test_dir, \&run_tests );
done_testing();
exit;


sub run_tests
{
	my($path) = shift;
	my($name) = $path =~ m/\/+(.*?)$/;
	$name = $path unless defined $name;
	unless(exists $cfg->{$name})
	{
		print "Found test, $path, but $name doesn't exist in test config...Skipping\n";
		return;
	}
	my $test_cfg = $cfg->{$name};
	my $test_args = exists $test_cfg->{args} ? $test_cfg->{args} : undef;
	my $cmdline = $path;
	$cmdline = $test_cfg->{bin} unless -e $cmdline;
	$cmdline .= " $test_args" if defined $test_args;
	&basic_test($cmdline,$test_cfg);
}

sub basic_test
{
	my($cmdline, $test_cfg) = @_;
	return unless 
		exists $test_cfg->{expected} or 
		exists $test_cfg->{regex_expected} or 
		exists $test_cfg->{expected_file};

	if( exists $test_cfg->{expected_file} )
	{
		$test_cfg->{expected} = &get_file($test_cfg->{expected_file});
	}
	my $test_name = $test_cfg->{name};
	my $got = &trim(join '',`$cmdline`);
	if($got =~ /egmentation/i)
	{
		print "seg error on $cmdline\n";
	}
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
	my $got = &trim(join '',`$valgrind -q $cmdline`);
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

sub add_callback
{
	my $path = shift;
	join '',`$path`
}

sub make_cfg
{
	my($cfg,$dir,$initial_callback,$test_callback) = @_;
	opendir D, $dir or die "Can't opendir $dir, $!\n";
	for( sort map {"$dir/$_"}grep !/^\./, readdir D)
	{
		next if -d;
		next unless -X;
		s,//+,/,g;
		(my $t = $_) =~ s,.*/,,;
		if( exists $cfg->{$t} )
		{	
			$test_callback->($t);
		}
		else
		{
			## handles finding new binaries 
			$cfg->{$t} = { 
				bin => $_, 
				name => $_ ,
				expected => $initial_callback->($_)
			};
		}
	}
	closedir D;
}

sub init_cfg
{
	my $path = shift;
	my $cfg = {};
	if( -e $path )
	{
		open F,$path || die "Can't read file $path, $!\n";
		my $content = join '',<F>;
		close F;
		$cfg = decode_json $content;	
	}
	return $cfg;	
}

sub save_cfg
{
	my($cfg,$path) = @_;
	open F,">$path" || die "Can't write file $path, $!\n";
	my $coder = JSON::XS->new->ascii->pretty->allow_nonref;
   print F $coder->encode($cfg);
	close F;
}

sub get_file
{
	my $path = shift;
	open F, $path || die "Can't read path $path, $!\n";
	my $retval = join '',<F>;
	close F;
	$retval
}
