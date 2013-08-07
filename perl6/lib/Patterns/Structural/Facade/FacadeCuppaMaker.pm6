use Patterns::Structural::Facade::;
class FacadeCuppaMaker; {


has teaBagIsSteeped => is => 'rw';
    
method makeACuppa 
{
	my $cup = new Patterns::Structural::Facade::FacadeTeaCup();
	my $teaBag = new Patterns::Structural::Facade::FacadeTeaBag();
	my $water = new Patterns::Structural::Facade::FacadeWater();
	$cup->teaBag($teaBag);
	$water->boil();
	$cup->water($water);
	$cup->steepTeaBag();
   $cup
}

}