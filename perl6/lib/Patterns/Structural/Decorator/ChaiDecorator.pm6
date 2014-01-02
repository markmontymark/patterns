#//ChaiDecorator - the decorator

use Patterns::Structural::Decorator::Tea;

class ChaiDecorator does Tea {

	has Tea $.teaToMakeChai is rw;
	has @.ingredients;

	method new( Tea $teaToMakeChai)
	{ 
		return self.bless( :$teaToMakeChai, :ingredients( (
			'bay leaf',
			'cinnamon stick',
			'ginger',
			'honey',
			'soy milk',
			'vanilla bean',
		)));
	}

	method steepTea 
	{
		$.steepChai()
	}

	method steepChai
	{
		$.teaToMakeChai.steepTea();
		$.steepChaiIngredients()
	}
		
	method steepChaiIngredients
	{
		@.ingredients.join: ''
	}

}
