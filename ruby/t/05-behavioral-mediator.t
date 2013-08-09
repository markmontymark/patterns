gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


use lib 'blib/lib';

require "Behavioral::Mediator;


my $dvdLower = DvdLowercaseTitle.new("Mulholland Dr.");
my $dvdUp = DvdUppercaseTitle.new($dvdLower);

my $dvdMediator = DvdMediator.new($dvdLower,$dvdUp);

is $dvdLower.lowercasetitle ,'mulholland dr.',"$?FILE Lowercase LC title :" ~ $dvdLower.lowercasetitle;
is $dvdLower.getTitle() ,'Mulholland Dr.',"$?FILE Lowercase super title :";
is $dvdUp.uppercasetitle ,'MULHOLLAND DR.',"$?FILE Upcase UC title :" ;
is $dvdUp.getTitle() , 'Mulholland Dr.',"$?FILE Upcase super title :";

$dvdLower.setSuperTitleLowercase();
#$dvdUp.setSuperTitleUpcase();

#say("After Super set to LC");
is $dvdLower.lowercasetitle ,'mulholland dr.',"$?FILE Lowercase LC title :";
is $dvdLower.getTitle() ,'mulholland dr.',"$?FILE Lowercase super title :";
is $dvdUp.uppercasetitle ,'MULHOLLAND DR.',"$?FILE Upcase UC title :";
is $dvdUp.getTitle() ,'Mulholland Dr.',"$?FILE Upcase super title :";

done();
