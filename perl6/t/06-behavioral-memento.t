use v5.016;
use strict;
use warnings;
use Test::More tests => 3;

BEGIN{ use_ok 'Patterns::Behavioral::Memento'};

my $dvdMementoCaretaker;  

my $stars = ["Guy Pearce"];
my $dvdDetails = new Patterns::Behavioral::Memento::DvdDetails("Memento", $stars, '1'); 
say($dvdDetails->formatDvdDetails);

ok(ref $dvdDetails);
$dvdMementoCaretaker = $dvdDetails->createDvdMemento();
ok(ref $dvdMementoCaretaker);
say("as first instantiated");

say("");       
$dvdDetails->addStar("edskdzkvdfb");  
#//oops - Cappuccino on the keyboard!
say("after star added incorrectly");
say($dvdDetails->formatDvdDetails());


say("");
$dvdDetails->setDvdMemento($dvdMementoCaretaker);
#//back off changes
say("after DvdMemento state is restored to DvdDetails");
say($dvdDetails->formatDvdDetails);

done_testing();
