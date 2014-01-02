use Patterns::common::Soup;

class VegetableSoup is Soup {

   method new 
	{
		return self.bless( :soupName("Vegetable Sou"), :soupIngredients( [
        "1 cup bullion",
        "1/4 cup carrots",
        "1/4 cup potatoes",
      ]))
	}
}

