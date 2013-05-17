#!/usr/bin/env perl

use strict;
use warnings;

use File::Slurp;

my $tmpl = shift;
my $type = shift;
my $typeClean = shift;
unless(defined $typeClean)
{
	($typeClean = $type) =~ s/[*]/_ptr/g;
	$typeClean =~ s/[^0-9A-Za-z_]/_/g;
	$typeClean =~ s/__$/_/;
}

my $c_tmpl = File::Slurp::read_file("$tmpl.c");
my $h_tmpl = File::Slurp::read_file("$tmpl.h");
my $t_tmpl = File::Slurp::read_file("$tmpl.t");

for my $pair ( ['type',$type],['typeclean',$typeClean] )
{
	for ( ($c_tmpl,$h_tmpl,$t_tmpl) )
	{
		s/%$pair->[0]%/$pair->[1]/isg;
	}
}

(my $path = $tmpl) =~ s/^.*?\//src\//;
$path =~ s/typeclean/$typeClean/i;

die "Error: Header $path.h already exists\n" if -e "$path.h";
die "Error: Implementation file $path.c already exists\n" if -e "$path.c";

File::Slurp::write_file("$path.h",$h_tmpl);
File::Slurp::write_file("$path.c",$c_tmpl);

$path =~ s/^src\//test\//i;
File::Slurp::write_file("$path.c",$t_tmpl);
