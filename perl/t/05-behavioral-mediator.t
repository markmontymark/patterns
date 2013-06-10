use v5.016;
use strict;
use warnings;
use Test::More tests => 9;

BEGIN{ use_ok 'Patterns::Behavioral::Mediator'};


my $dvdMediator = new Patterns::Behavioral::Mediator::DvdMediator();
my $dvdLower = new Patterns::Behavioral::Mediator::DvdLowercaseTitle("Mulholland Dr.", $dvdMediator);
my $dvdUp = new Patterns::Behavioral::Mediator::DvdUppercaseTitle($dvdLower, $dvdMediator);

is($dvdLower->lowercasetitle ,'mulholland dr.',"Lowercase LC title :" . $dvdLower->lowercasetitle);
is( $dvdLower->getTitle ,'Mulholland Dr.',"Lowercase super title :");
is( $dvdUp->uppercasetitle ,'MULHOLLAND DR.',"Upcase UC title :" );
is( $dvdUp->getTitle , 'Mulholland Dr.',"Upcase super title :");

$dvdLower->setSuperTitleLowercase();

say("After Super set to LC");
is( $dvdLower->lowercasetitle ,'mulholland dr.',"Lowercase LC title :");
is( $dvdLower->getTitle ,'mulholland dr.',"Lowercase super title :");
is( $dvdUp->uppercasetitle ,'MULHOLLAND DR.',"Upcase UC title :");
is( $dvdUp->getTitle ,'mulholland dr.',"Upcase super title :");

done_testing();
