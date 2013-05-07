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
my $src_files = {}; ## used for File::Find::find in make_makefile

&make_makefile($src_dir,$tst_dir);
exit;

sub make_makefile
{
	my($src_dir,$test_dir) = @_;
	File::Find::find( \&get_srcfiles,$src_dir);
	my $libname = 'mrk';
	my $libversion = '1';
	my $makefile = &_makefile_tmpl(
		$libname,
		$libversion,
		&make_lib_objects('obj'),
		&make_compile_lib_objects('obj','bin'),
		&make_test_objects('bin-test'),
		&make_compile_test_objects('bin-test','obj-test','obj')
	);
	`mv Makefile Makefile.orig`;
	File::Slurp::write_file('Makefile',{atomic=>1},$makefile);
}

sub get_srcfiles
{
	return unless $File::Find::name =~ /\.(?:c|cc|cpp)$/;
	my $klasspath = $File::Find::name;
	my($klass,$ext) = $klasspath =~ m,/([^/]+)\.(c|cc|cpp)$,;
	$klass = ucfirst $klass;
	$klasspath =~ s/$klass.*?$//;
	$src_files->{ $File::Find::name }->{klass} = $klass;
	$src_files->{ $File::Find::name }->{ext} = $ext;
	$src_files->{ $File::Find::name }->{klasspath} = $_;
}

sub make_lib_objects
{
	my($dir) = @_;
	join(" \\\n",map{
		my $klass = $src_files->{$_}->{klass};
		$klass =~ s/\.(?:c|cc|cpp)//;
		"\t$dir/$klass.o"
	}sort keys %$src_files) 
}

sub make_compile_lib_objects
{
	my($obj_dir) = @_;
	join("\n\n",map{
		my $klasspath = $src_files->{$_}->{klasspath};
		my $klass = $src_files->{$_}->{klass};
qq#$obj_dir/$klass.o: src/$klasspath
\tc++ -fPIC -g -c src/$klasspath -o $obj_dir/$klass.o
#
	}sort keys %$src_files) 
}

sub make_test_objects
{
	my($dir) = @_;
	join(" \\\n",map{
		my $klass = $src_files->{$_}->{klass};
		$klass =~ s/\.(?:c|cc|cpp)//;
		"\t$dir/Test$klass"
	}sort keys %$src_files) 
}

sub make_compile_test_objects
{
	my($test_dir,$test_object_dir,$object_dir) = @_;
	join("\n\n",map{
		my $klasspath = $src_files->{$_}->{klasspath};
		my $klass = $src_files->{$_}->{klass};
qq#
$test_dir/Test$klass: $object_dir/$klass.o $test_object_dir/Test$klass.o
\tc++ -fPIC -std=c++11 -g -o $test_dir/Test$klass $test_object_dir/Test$klass.o $object_dir/$klass.o -Wall

$test_object_dir/Test$klass.o: test/Test$klass.cpp
\tc++ -fPIC -std=c++11 -g -c test/Test$klass.cpp -o $test_object_dir/Test$klass.o
#
	} sort keys %$src_files)
}

sub _makefile_tmpl
{
	my($libname,$libversion,$lib_objects,$compile_lib_objects,$test_objects,$compile_test_objects) = @_;
qq~
V = $libversion
B = bin
T = bin-test
TO = obj-test
O = obj
L = lib

all: init lib_objects test_objects libso
cleanall: clean all
test: clean all
	perl ./scripts/ctest.pl test/ctest.json \$T

lib_objects: \\
$lib_objects

test_objects:  \\
$test_objects

init:
	mkdir -p \$O \$B \$L \$T \$(TO)

clean:
	rm -rf \$O \$B \$L \$T \$(TO)

doxy:
	doxygen Doxyfile
	rm -rf doc/latex

libso:
	c++ -shared -fPIC -Wl,-soname,lib$libname.so.\$V -o \$L/lib$libname++.so.\$V \\
$lib_objects

## TEST OBJECTS

$compile_test_objects


## LIB OBJECTS

$compile_lib_objects
~;

}

