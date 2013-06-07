#!/usr/bin/env perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Patterns' ) || print "Bail out!\n";
}

diag( "Testing Patterns $Patterns::VERSION, Perl $], $^X" );
