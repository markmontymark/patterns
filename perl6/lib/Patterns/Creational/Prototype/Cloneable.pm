package Patterns::Creational::Prototype::Cloneable;

use Moo::Role;

## For now, only clones hash-ref-based objects
sub clone 
{ 
	my $self = shift;
	my $new = {};
	my($val,$valref);
	for(keys %$self)
	{
		$val = $self->{$_};
		$valref = ref $val;
		if ($valref && $valref eq 'HASH')
		{
			$new->{$_} = &clone($val); ## isn't checking for cycles, gasp.
		}
		elsif( $valref eq 'ARRAY' )
		{
			$new->{$_} = [ map { (ref $_) ? &clone($_) : $_ } @$val ];
		}
		else
		{
			$new->{$_} = $val;
		}
	}
	$new
}

1;
