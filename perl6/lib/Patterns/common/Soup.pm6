# Soup - A helper class

class Soup {

	has Str $.soupName;
	has Str @.soupIngredients;

	method toString
	{
		($.soupName, 'Ingredients: ', @.soupIngredients).join: ' '
	}        

}
