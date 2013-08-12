#!/usr/bin/env perl

use strict;
use warnings;

use v5.016;
use Cwd;
use File::Find;

my $test_classes = {};
my $dist_dir = './dist';
my $build_dir = './build';

die "Maybe you didn't build java files yet? Try: cd java; ant\n" unless -d $dist_dir;


my $jar;
File::Find::find({wanted=>\&find_jar_path,no_chdir=>1},$dist_dir);
FOUNDJAR:
die "Can't find jar file to run tests with\n" unless defined $jar;
print "Using jar $jar\n";

#chdir 'java/build';
File::Find::find({wanted=>\&run_tests,no_chdir=>1}, $build_dir);

exit;

sub find_jar_path
{
	return unless $File::Find::name =~ /\.jar$/;
	$jar = Cwd::abs_path($File::Find::name);
	goto FOUNDJAR;
}

sub run_tests
{
	return unless $File::Find::name =~ /\/Test[^\/]*.class$/;
	(my $test_klass = $File::Find::name) =~ s/$build_dir\/?//;
	$test_klass =~ s/\.class$//;
	$test_klass =~ s/[\/]/./g;
	print "$test_klass\n";
	say "java -cp $jar $test_klass";
	#system("java -cp $jar $test_klass"),"\n";
}
