use Patterns::common::Soup;

class FishChowder is Soup {

	method new
   {
      return self.bless( * , :soupName('Fish Chowder'), :soupIngredients( [
        "1 Pound Fresh fish",
        "1 cup fruit or vegetables",
        "1/2 cup milk",
        "1/4 cup butter",
        "1/4 cup chips",
      ]) )
	}
}

