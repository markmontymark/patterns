use v6;
use Test;

use lib 'blib/lib';
use Patterns::Behavioral::Memento;

my $dvdMementoCaretaker;  

my @stars = ["Guy Pearce"];
my $dvdDetails = DvdDetails.new("Memento", @stars, '1'); 

is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1', 'first format of dvd details';
$dvdMementoCaretaker = $dvdDetails.createDvdMemento();
is (defined $dvdMementoCaretaker), True, 'creating a dvdmemento';
#say "as first instantiated";

#say ;       
$dvdDetails.addStar("edskdzkvdfb");  
#//oops - Cappuccino on the keyboard!
#say "after star added incorrectly";
is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1', 'second format of dvd details';

$dvdDetails.setDvdMemento($dvdMementoCaretaker);
#//back off changes
#say "after DvdMemento state is restored to DvdDetails";
is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1', 'restored format details';

done();
