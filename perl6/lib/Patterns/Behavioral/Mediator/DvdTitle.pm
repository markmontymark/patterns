#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Mediator
#//Mediator Overview
#//Passes communication between two or more objects.
#//DvdTitle.java - the Abstract Colleague or Mediatee


package Patterns::Behavioral::Mediator::DvdTitle;

use base 'Class::Virtually::Abstract';
use Moo;
has title => (is => 'rw');
   
sub setTitle
{
	my($self,$title) = @_;
	$self->title($title);
}

sub getTitle
{
	my $self = shift;
	$self->title
}

1;
