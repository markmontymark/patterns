
use v6;
use Test;

use lib 'blib/lib';
use Patterns::Structural::Bridge;

sub testCherryPlatform {
	SodaImpSingleton.setTheSodaImp(CherrySodaImp.new());
	my $mediumSoda = MediumSoda.new();
	is $mediumSoda.pourSoda(), 'Yummy Cherry Soda! Yummy Cherry Soda!', 
		"$?FILE Testing medium cherry";

	my $superSizeSoda = SuperSizeSoda.new();
	is $superSizeSoda.pourSoda(), 'Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda!', 
		"$?FILE Testing supersize cherry";
}
   
sub testGrapePlatform {
	SodaImpSingleton.setTheSodaImp(GrapeSodaImp.new());
	my $mediumSoda = MediumSoda.new();
	is $mediumSoda.pourSoda(), 'Yummy Grape Soda! Yummy Grape Soda!', 
		"$?FILE Testing medium grape";
	my $superSizeSoda = SuperSizeSoda.new();
	is $superSizeSoda.pourSoda(), 'Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda!', 
		"$?FILE Testing supersize grape";
}   

sub testOrangePlatform {
	SodaImpSingleton.setTheSodaImp(OrangeSodaImp.new());
	my $mediumSoda = MediumSoda.new();
	is $mediumSoda.pourSoda(), 'Yummy Orange Soda! Yummy Orange Soda!', 
		"$?FILE Testing medium orange";

	my $superSizeSoda = SuperSizeSoda.new();
	is $superSizeSoda.pourSoda(), 'Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda!', 
		"$?FILE Testing supersize orange";
}
    
testCherryPlatform();
testGrapePlatform();
testOrangePlatform();

done();
