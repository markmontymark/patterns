use Patterns::common::Soup;

class ClamChowder is Soup {

	method new
   {
      return self.bless( :soupName('Clam Chowder'), :soupIngredients( [
        "1 Pound Fresh Clams",
        "1 cup fruit or vegetables",
        "1/2 cup milk",
        "1/4 cup butter",
        "1/4 cup chips",
      ]) )
	}
}

