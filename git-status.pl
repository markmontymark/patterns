#!/usr/bin/env perl

use v5.16;
use Term::ANSIColor;
for(grep !/^\./,`ls`)
{
	chomp;
	next unless -d  && -d "$_/.git";
	chdir $_;
	my @lines = `git status --porcelain`;
	if( scalar @lines == 0 )
	{
		print color 'bold green';
		say $_;
		print color 'reset';
	}
	else
	{
		print color 'bold red';
		say $_;
		print color 'reset';
		print @lines;
	}

	chdir '..';
}


