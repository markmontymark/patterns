package Patterns::Structural::Composite::TinOfTeaBags;

#//TinOfTeaBags - one composite extension - the "node"
use Moo;
extends 'Patterns::Structural::Composite::TeaBags';

sub BUILDARGS
{
	my($class,$name) = @_;
	{ name => $name, teaBagList => [] }
}

sub countTeaBags {
	my $self = shift;
	my $totalTeaBags = 0;
	$totalTeaBags += $_->countTeaBags for @{$self->teaBagList};
	$totalTeaBags
}

sub add
{
	my($self,$teaBags) = @_;
	$teaBags->parent($self);
	return push @{$self->teaBagList},$teaBags;
}

sub remove
{
	my($self,$toRemove) = @_;
	my @newList = ();
	my $found_at_least_one = 0;
	for( @{$self->teaBagList} )
	{
		if($_ == $toRemove)
		{
			$found_at_least_one = 1 unless $found_at_least_one;
		}
		else
		{
			push @newList,$_;
		}
	}
	$found_at_least_one
}

1;
