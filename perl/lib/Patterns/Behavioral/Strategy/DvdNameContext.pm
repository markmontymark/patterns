
#//DvdNameContext.java - the context

package Patterns::Behavioral::Strategy::DvdNameContext;

use v5.016;
use Moo;
has dvdNameStrategy => (is => 'rw');
has type => (is => 'rw');
  
sub BUILDARGS
{
	my($class,$type) = @_;
	{ type => $type }
} 

sub BUILD
{
	my($self) = @_;
	if($self->type eq 'C')
	{
		$self->dvdNameStrategy(new Patterns::Behavioral::Strategy::DvdNameAllCapStrategy());
	}
	elsif($self->type eq 'E')
	{
		$self->dvdNameStrategy(new Patterns::Behavioral::Strategy::DvdNameTheAtEndStrategy());
	}
	elsif($self->type eq 'S')
	{
		$self->dvdNameStrategy(new Patterns::Behavioral::Strategy::DvdNameReplaceSpacesStrategy());
	}
	else
	{
		$self->dvdNameStrategy(new Patterns::Behavioral::Strategy::DvdNameTheAtEndStrategy());
	}
}  
   
sub formatDvdNames
{
	my($self,$names,$char) = @_;
	$char = ' ' unless defined $char;
   
	[
		map
		{
			my $before = $_;
			my $after = $self->dvdNameStrategy->formatDvdName($_, $char);
			say "Dvd name before formatting: $before";
			say "Dvd name after formatting:  $after";
			$after
		} @$names
	]
}

1;
