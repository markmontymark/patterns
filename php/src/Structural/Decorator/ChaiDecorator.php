<?

#//ChaiDecorator.java - the decorator

require_once 'Tea.php';

class ChaiDecorator implements Tea
{

	public $teaToMakeChai;
	public $ingredients;

	function __construct($teaToMakeChai)
	{
		$this->teaToMakeChai = $teaToMakeChai;
		$this->ingredients = [
				"bay leaf",
				"cinnamon stick",
				"ginger",
				"honey",
				"soy milk",
				"vanilla bean",
		];
	}

	function steepTea ()
	{
		$this->steepChai();
	}

	function steepChai()
	{
		$this->teaToMakeChai->steepTea();
		$this->steepChaiIngredients();
	}    
   
	function steepChaiIngredients()
	{
		return implode('',$this->ingredients);
	}

}
