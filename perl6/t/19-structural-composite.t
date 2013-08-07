

use v6;

use Test;

use lib 'blib/lib';


use Patterns::Structural::Composite


say("Creating tinOfTeaBags");
my $tinOfTeaBags = new Patterns::Structural::Composite::TinOfTeaBags("tin of tea bags");
say("The tinOfTeaBags has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.");

say(" ");       

say("Creating teaBag1");
my $teaBag1 = new Patterns::Structural::Composite::OneTeaBag("tea bag 1");
say("The teaBag1 has " . $teaBag1->countTeaBags() . " tea bags in it.");

say(" ");       

say("Creating teaBag2");
my $teaBag2 = new Patterns::Structural::Composite::OneTeaBag("tea bag 2");
say("The teaBag2 has " . $teaBag2->countTeaBags() . " tea bags in it."); 

say(" ");

say( "Putting teaBag1 and teaBag2 in tinOfTeaBags");
is ($tinOfTeaBags->add($teaBag1) ?  "teaBag1 added successfully to tinOfTeaBags" : "teaBag1 not added successfully tinOfTeaBags",'teaBag1 added successfully to tinOfTeaBags','Test putting teaBag1 and teaBag2 in tin, first '); 
is( $tinOfTeaBags->add($teaBag2) ?  "teaBag2 added successfully to tinOfTeaBags" : "teaBag2 not added successfully tinOfTeaBags",'teaBag2 added successfully to tinOfTeaBags','Test putting teaBag1 and teaBag2 in tin, second ');
say("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.");

say(" ");

say("Creating smallTinOfTeaBags");
my $smallTinOfTeaBags = new Patterns::Structural::Composite::TinOfTeaBags("small tin of tea bags");
say("The smallTinOfTeaBags has " . $smallTinOfTeaBags->countTeaBags() . " tea bags in it.");
say("Creating teaBag3");
my $teaBag3 = new Patterns::Structural::Composite::OneTeaBag("tea bag 3");
say("The teaBag3 has " . $teaBag3->countTeaBags() . " tea bags in it.");
say("Putting teaBag3 in smallTinOfTeaBags");
is($smallTinOfTeaBags->add($teaBag3) ?  "teaBag3 added successfully to smallTinOfTeaBags" : "teaBag3 not added successfully to smallTinOfTeaBags",'teaBag3 added successfully to smallTinOfTeaBags', 'Test if teaBag3 added');
say("The smallTinOfTeaBags now has " . $smallTinOfTeaBags->countTeaBags() . " tea bags in it.");

say(" "); 

say( "Putting smallTinOfTeaBags in tinOfTeaBags");
is ($tinOfTeaBags->add($smallTinOfTeaBags) ?  "smallTinOfTeaBags added successfully to tinOfTeaBags" : "smallTinOfTeaBags not added successfully to tinOfTeaBags" ,'smallTinOfTeaBags added successfully to tinOfTeaBags', 'Test adding a tin of tea bags into another tin of tea bags'); 
say("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.");
say(" ");
say("Removing teaBag2 from tinOfTeaBags");
is ($tinOfTeaBags->remove($teaBag2) ?  "teaBag2 successfully removed from tinOfTeaBags" :  "teaBag2 not successfully removed from tinOfTeaBags" ,"teaBag2 successfully removed from tinOfTeaBags", 'Test removing teaBag2 from tin');
say("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.");
done();

