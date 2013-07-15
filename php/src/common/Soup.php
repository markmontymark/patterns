<?

#//Soup.java - A helper class

class Soup 
{
	public $soupName;
	public $soupIngredients;

	function toString()
	{
		return implode(' ',array($this->soupName,'Ingredients: ',implode(',',$self->soupIngredients)));
	}        

}
