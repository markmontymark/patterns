#//DvdSubscriber.java - the observer

package Patterns::Behavioral::Observer::DvdSubscriber;

use Data::Dumper;
use v5.016;
use Moo;
has name => (is => 'ro');

sub BUILDARGS
{
	my($class,$name) = @_;
	{ name => $name }
} 
   
sub newDvdRelease
{
	my($self, $release, $subscriberName ) = @_;
	say("");
	say("Hello " . $self->name . ", subscriber to the " . $subscriberName . " DVD release list.");
	say("The new Dvd " . 
		$release->name . " will be released on " . 
		$release->releaseMonth . "/" . 
		$release->releaseDay . "/" . 
		$release->releaseYear . ".");
}

sub updateDvdRelease
{
	my($self, $release, $subscriptionListName)  = @_;
	say("");
	say("Hello " . $self->name .  ", subscriber to the " .  $subscriptionListName .  " DVD release list.");
	say( "The following DVDs release has been revised: " .  
		$release->name . " will be released on " .  $release->releaseMonth . "/" .  $release->releaseDay . "/" .  $release->releaseYear . ".");
}   

1;
