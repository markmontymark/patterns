#!/usr/bin/env perl

use v5.16;
use Term::ANSIColor;
for(grep !/^\./,`ls`)
{
	chomp;
	unless( -d  && -d "$_/.git")
	{
		say colored $_, 'bold blue';
		next;
	}
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


