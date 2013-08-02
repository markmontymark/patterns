package Patterns::Behavioral::Observer::DvdReleaseByCategory;

## //DvdReleaseByCategory - the subject
#//(the class which is observed)

use Moo;
has categoryName => (is => 'ro');
has subscribers => (is => 'ro');
has releases => (is => 'ro');

sub BUILDARGS
{
	my($class,$categoryName) = @_;
	{
		categoryName => $categoryName,
		subscribers =>  [],
		releases => [],
	}
}
	
   
sub addSubscriber
{
	my($self,$subscriber) = @_;
	push @{$self->{subscribers}},$subscriber;
}
  
sub removeSubscriber
{
	my($self,$subscriber) = @_;
	my $i = 0;
	my $found_i = -1;
	for( @{$self->subscribers} )
	{
		if($subscriber == $_)
		{
			$found_i = $i;
			last;
		}
		$i++;
	}
	if($found_i != -1 )
	{
		splice(@{$self->subscribers},$found_i,1);
		return 1;
	}
	return 0;
}
   
sub newDvdRelease
{
	my($self,$release) = @_;
	push @{$self->releases},$release;
	$self->notifySubscribersOfNewDvd($release);
}
   
sub updateDvd
{
	my($self,$release) = @_;
	my $dvdUpdated = 0;
	for( @{ $self->releases} )
	{
		if ($release->serialNumber eq $_->serialNumber) 
		{
			$_->updateRelease($release); ## add retval of true/false to denote if any data changed -- ie dont notify if no real change was made
			$dvdUpdated = 1;
			last;
		}
	}
	if ($dvdUpdated) 
	{
		$self->notifySubscribersOfUpdate($release);
	} 
	else 
	{ 
		$self->newDvdRelease($release);
	}
}
   
sub notifySubscribersOfNewDvd
{
	my($self,$release) = @_;
	$_->newDvdRelease($release,$self->categoryName) for @{$self->subscribers};
}

sub notifySubscribersOfUpdate
{
	my($self,$release) = @_;
	$_->updateDvdRelease($release,$self->categoryName) for @{$self->subscribers};
}

1;


