use Patterns::common::Soup;

class TofuSoup is Soup {

	method new
   {
      return self.bless( :soupName('Tofu Soup'), :soupIngredients( [
        "1 Pound tofu",
        "1 cup carrot juice",
        "1/4 cup spirolena",
      ] ))
	}
}

