use v6;
use Test;

use lib 'blib/lib';
use Patterns::Behavioral::Memento;

my $dvdMementoCaretaker;  

my @stars = ["Guy Pearce"];
my $dvdDetails = DvdDetails.new("Memento", @stars, '1'); 

is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1', 
	"$?FILE first format of dvd details";
$dvdMementoCaretaker = $dvdDetails.createDvdMemento();
is (defined $dvdMementoCaretaker), True, 
	"$?FILE creating a dvdmemento";


#//oops - Cappuccino on the keyboard!
$dvdDetails.addStar("edskdzkvdfb");  

is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1', 
	"$?FILE second format of dvd details";

$dvdDetails.setDvdMemento($dvdMementoCaretaker);

#//back off changes
is $dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1', 
	"$?FILE restored format details";

done();
