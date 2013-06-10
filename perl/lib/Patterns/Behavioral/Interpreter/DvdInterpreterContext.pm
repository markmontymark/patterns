#//DvdInterpreterContext.java - The Context

package Patterns::Behavioral::Interpreter::DvdInterpreterContext;
use Moo;
has titles => (is => 'rw');
has actors => (is => 'rw');
has titlesAndActors => (is => 'rw');

sub BUILDARGS
{
	{
		titles => [],
		actors => [],
		titlesAndActors => [],
	}
}


sub addTitle
{
	my($self,$title) = @_;
	push @{$self->titles},$title;
}
sub addActor
{
	my($self,$actor) = @_;
	push @{$self->actors},$actor;
}
sub addTitleAndActor
{
	my($self,$titleAndActor) = @_;
	push @{$self->titlesAndActors},$titleAndActor;
}

sub getAllTitles 
{
	my $self = shift;
	$self->titles
}
sub getAllActors 
{
	my $self = shift;
	$self->actors
}

sub getActorsForTitle
{
	my($self,$title) = @_;
	my @retval = ();
	for( @{$self->titlesAndActors} ) 
	{
		push @retval,$_->actor if $title eq $_->title;
	}
	\@retval
}

sub getTitlesForActor
{
	my($self,$actor) = @_;
	my @retval = ();
	for( @{$self->titlesAndActors} ) 
	{
		push @retval,$_->title if $actor eq $_->actor;
	}
	\@retval
}

1;
