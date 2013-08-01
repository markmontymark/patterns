use strict;
use warnings;
use v5.016;

use Test::More tests => 7;

BEGIN{use_ok 'Patterns::Structural::Bridge'};


sub testCherryPlatform {
	Patterns::Structural::Bridge::SodaImpSingleton::setTheSodaImp(new Patterns::Structural::Bridge::CherrySodaImp);
	say( "testing medium soda on the cherry platform");
	my $mediumSoda = new Patterns::Structural::Bridge::MediumSoda;
	$mediumSoda->pourSoda;
	is($mediumSoda->pourSoda, 'Yummy Cherry Soda! Yummy Cherry Soda!', 'Testing medium cherry');
	say( "testing super size soda on the cherry platform");
	my $superSizeSoda = new Patterns::Structural::Bridge::SuperSizeSoda;
	is($superSizeSoda->pourSoda, 'Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda!', 'Testing supersize cherry');
}
   
sub testGrapePlatform {
	Patterns::Structural::Bridge::SodaImpSingleton::setTheSodaImp(new Patterns::Structural::Bridge::GrapeSodaImp);
	say( "testing medium soda on the grape platform");
	my $mediumSoda = new Patterns::Structural::Bridge::MediumSoda;
	$mediumSoda->pourSoda;
	is($mediumSoda->pourSoda, 'Yummy Grape Soda! Yummy Grape Soda!', 'Testing medium grape');
	say( "testing super size soda on the grape platform");
	my $superSizeSoda = new Patterns::Structural::Bridge::SuperSizeSoda;
	is($superSizeSoda->pourSoda, 'Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda!', 'Testing supersize grape');
}   

sub testOrangePlatform {
	Patterns::Structural::Bridge::SodaImpSingleton::setTheSodaImp(new Patterns::Structural::Bridge::OrangeSodaImp);
	say( "testing medium soda on the orange platform");
	my $mediumSoda = new Patterns::Structural::Bridge::MediumSoda;
	$mediumSoda->pourSoda;
	is($mediumSoda->pourSoda, 'Yummy Orange Soda! Yummy Orange Soda!', 'Testing medium orange');
	say( "testing super size soda on the orange platform");
	my $superSizeSoda = new Patterns::Structural::Bridge::SuperSizeSoda;
	is($superSizeSoda->pourSoda, 'Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda!', 'Testing supersize orange');
}
    
&testCherryPlatform;
&testGrapePlatform;
&testOrangePlatform;

done_testing;
