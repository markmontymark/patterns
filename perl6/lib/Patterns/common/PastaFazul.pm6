use Patterns::common::Soup;

class PastaFazul is Soup {

	method new
	{
      return self.bless( :soupName('Pasta Fazul'), :soupIngredients( [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1/2 cup diced carrots",
        "1 cup tomato juice",
      ]))
    }
}

