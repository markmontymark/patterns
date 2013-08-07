use Patterns::Structural::Facade::;
class FacadeTeaCup; {

#//FacadeTeaCup - one of three classes the facade calls

use v5.016;

has teaBagIsSteeped => is => 'rw';
has water => is => 'rw';
has teaBag => is => 'rw';
    
method BUILD
{
	my $self = shift;
	$self->teaBagIsSteeped(0);
}    
   
method steepTeaBag 
{
	my $self = shift;
	if($self->teaBag && 
		$self->water && 
		$self->water->isBoiling
	) 
	{
		say("the tea is steeping in the cup");
		$self->teaBagIsSteeped(1);
	} 
	else 
	{
		say("the tea is not steeping in the cup");
		$self->teaBagIsSteeped(0);
	}           
}
   
method toString
{
	my $self = shift;
	return "A nice cuppa tea!" if $self->teaBagIsSteeped;
	my $tempString = "A cup with ";
	if ($self->water) {
		$tempString .=  $self->water->isBoiling ? "boiling water " : "cold water ";
	}
	else 
	{
		$tempString .= "no water ";
	}

	$tempString .= $self->teaBag ? "and a tea bag" : "and no tea bag";
	$tempString
}

}