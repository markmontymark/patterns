#//TeaCup - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

use Patterns::Structural::Adapter::TeaBag;

class TeaCup {

	method steepTeaBag( TeaBag $teaBag)
	{
		$teaBag.steepTeaInCup()
	}

}
