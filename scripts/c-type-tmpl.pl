#!/usr/bin/env perl

=head1 Usage

perl scripts/c-type-tmpl.pl path/to/tmpl_file type [typeclean]

	path/to/tmpl_file - create 3 files, a .h, .c and .t file.  
		The .h and .c tmpl files will be used to create files in ./src.
		The .t tmpl files will be used to create a file in ./test.

	type - the actual c type to be substituted in tmpl files with the token, %type%.

	typeclean - Optional - A cleaned up version of type for use in macros, typdefs, etc.
		Used in replacements for token %typeclean%

=cut

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

File::Slurp::write_file("$path.h",$h_tmpl);
File::Slurp::write_file("$path.c",$c_tmpl);

$path =~ s/^src\//test\//i;
File::Slurp::write_file("$path.c",$t_tmpl);
