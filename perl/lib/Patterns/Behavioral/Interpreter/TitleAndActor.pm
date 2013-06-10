# //TitleAndActor.java - A Helper Class
package Patterns::Behavioral::Interpreter::TitleAndActor;

use Moo;
has title => (is => 'rw' );
has actor => (is => 'rw' );

sub BUILDARGS
{
	my($class,$title,$actor) = @_;
	{
		title => $title,
		actor => $actor,
	}
}

1;

