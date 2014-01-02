#//TeaBall - the adapter

use Patterns::Structural::Adapter::TeaBag;
use Patterns::Structural::Adapter::LooseLeafTea;

class TeaBall is TeaBag {

	has LooseLeafTea $.looseLeafTea is rw;

	method new( LooseLeafTea $looseLeafTea)
	{
		return self.bless( :$looseLeafTea, :teaBagIsSteeped( $looseLeafTea.teaIsSteeped ) );
	}
   
	method steepTeaInCup 
	{
		$.looseLeafTea.steepTea();
		$.teaBagIsSteeped = True;
	}

}
