


gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';
require "Structural::Composite;


my $tinOfTeaBags = TinOfTeaBags.new("tin of tea bags");
my $teaBag1 = OneTeaBag.new("tea bag 1");
my $teaBag2 = OneTeaBag.new("tea bag 2");
is $tinOfTeaBags.add($teaBag1) ??  "teaBag1 added successfully to tinOfTeaBags" !! "teaBag1 not added successfully tinOfTeaBags",
	'teaBag1 added successfully to tinOfTeaBags',
	'Test putting teaBag1 and teaBag2 in tin, first '; 

is $tinOfTeaBags.add($teaBag2) ??  "teaBag2 added successfully to tinOfTeaBags" !! "teaBag2 not added successfully tinOfTeaBags",
	'teaBag2 added successfully to tinOfTeaBags',
	'Test putting teaBag1 and teaBag2 in tin, second ';


my $smallTinOfTeaBags = TinOfTeaBags.new("small tin of tea bags");
my $teaBag3 = OneTeaBag.new("tea bag 3");
is $smallTinOfTeaBags.add($teaBag3) ??  "teaBag3 added successfully to smallTinOfTeaBags" !! "teaBag3 not added successfully to smallTinOfTeaBags",'teaBag3 added successfully to smallTinOfTeaBags', 'Test if teaBag3 added';

is $tinOfTeaBags.add($smallTinOfTeaBags) ??  "smallTinOfTeaBags added successfully to tinOfTeaBags" !! "smallTinOfTeaBags not added successfully to tinOfTeaBags" ,'smallTinOfTeaBags added successfully to tinOfTeaBags', 'Test adding a tin of tea bags into another tin of tea bags'; 
is $tinOfTeaBags.remove($teaBag2) ??  "teaBag2 successfully removed from tinOfTeaBags" !!  "teaBag2 not successfully removed from tinOfTeaBags" ,"teaBag2 successfully removed from tinOfTeaBags", 'Test removing teaBag2 from tin';
done();

