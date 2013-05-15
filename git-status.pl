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
		say colored $_, 'bold green';
	}
	else
	{
		say colored $_, 'bold red';
		print @lines;
	}

	chdir '..';
}


