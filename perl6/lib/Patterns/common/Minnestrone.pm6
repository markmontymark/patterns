use Patterns::common::Soup;

class Minnestrone is Soup {

   method new 
	{
		return self.bless( * , :soupName('Minnestrone'), :soupIngredients( [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1 cup tomato juice",
      ]) )
	}
}
