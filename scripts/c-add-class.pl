#!perl

use strict;
use warnings;

use File::Find;
use File::Basename;
use File::Slurp;
use JSON::XS;
use v5.16;

my $src_dir = 'src';
my $tst_dir = 'test';
my $tst_cfg_file = 'test/ctest.json';
my $src_files = {}; ## used for File::Find::find in make_makefile

&add_class($_,$src_dir,$tst_dir) for @ARGV;
exit;

sub add_class
{
	my($klasspath,$src_dir,$test_dir) = @_;
	my $klass = $klasspath;
	if($klasspath =~ /\//)
	{
		($klass) = $klasspath =~ m,.*/([^/]+)$,;
		$klasspath =~ s,/[^/]+$,,;
		#$klasspath = '.' if $klasspath eq '';
	}
	$klass = ucfirst $klass;
	&add_src($src_dir,$klasspath,$klass);
	&add_test($test_dir,$klasspath,$klass);
	&add_test_case($test_dir,$klasspath,$klass);
}

sub add_src
{
	my($src_dir,$klasspath,$klass) = @_;
	my $define = uc $klass;
	&create_file("$src_dir/$klasspath.hpp",qq~
#ifndef $define~.qq~_HPP 
#define $define~.qq~_HPP 

class $klass
{
	public:
	void run();
};

#endif
~);

	&create_file("$src_dir/$klasspath.cpp",qq#

\#include <iostream>
\#include <iterator>
\#include <algorithm>

\#include "$klasspath.hpp"

void $klass\::run()
{
   std::cout << "In $klass run()\\n";
}

#);

}

sub add_test
{
	my($test_dir,$klasspath,$klass) = @_;

	&create_file("$test_dir/Test$klass.cpp",qq#

\#include <iostream>
\#include <iterator>
\#include <algorithm>

\#include "../src/$klasspath.hpp"
\#include "MrkTest.hpp"

class Test$klass : public MrkTest
{
	public:
	Test$klass(int argc,char **argv) : MrkTest(argc,argv){};
	void test()
	{
		$klass * obj = new $klass();
		obj->run();
	}
};

int main(int argc,  char ** argv)
{
	std::cout << "in $klass test main\\n";	
	Test$klass * t = new Test$klass(argc,argv);
	t->test();
	return 0;
}
#);

}

sub add_test_case
{
	my($test_dir,$klasspath,$klass) = @_;
	my $test_cfg = JSON::XS::decode_json( File::Slurp::read_file($tst_cfg_file));
	$test_cfg->{"Test$klass"} = {
      name =>"Class $klass test",
      expected => "in $klass " .q#test main
#,
   };
	File::Slurp::write_file(
		$tst_cfg_file,
		{atomic=>1},
		JSON::XS->new->pretty(1)->encode( $test_cfg )
	);
}

sub create_file
{
	my($path, $content) = @_;
	my $basepath = dirname($path);
	mkdir $basepath unless -d $basepath;
	open F,">$path" || die "Can't create file, $path, $!\n";
	print F $content;	
	close F;
}
