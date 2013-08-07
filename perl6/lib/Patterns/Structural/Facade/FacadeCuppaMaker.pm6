use Patterns::Structural::Facade::FacadeTeaCup;
use Patterns::Structural::Facade::FacadeTeaBag;
use Patterns::Structural::Facade::FacadeWater;

class FacadeCuppaMaker {

	has Bool $.teaBagIsSteeped is rw;
		 
	method makeACuppa 
	{
		my $cup = FacadeTeaCup.new();
		my $teaBag = FacadeTeaBag.new();
		my $water = FacadeWater.new();
		$cup.teaBag = $teaBag;
		$water.boil();
		$cup.water = $water;
		$cup.steepTeaBag();
		$cup
	}

}
