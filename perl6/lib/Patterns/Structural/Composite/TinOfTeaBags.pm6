use Patterns::Structural::Composite::;
class TinOfTeaBags; {

#//TinOfTeaBags - one composite extension - the "node"

extends 'Patterns::Structural::Composite::TeaBags';

method new
{
	my($class,$name) = @_;
	{ name => $name, teaBagList => [] }
}

method countTeaBags {
	my $self = shift;
	my $totalTeaBags = 0;
	$totalTeaBags += $_->countTeaBags for @{$self->teaBagList};
	$totalTeaBags
}

method add
{
	my($self,$teaBags) = @_;
	$teaBags->parent($self);
	return push @{$self->teaBagList},$teaBags;
}

method remove
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

}