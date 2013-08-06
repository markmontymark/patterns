use Patterns::common::ClamChowder;

class BostonClamChowder is ClamChowder {

	method new
	{
		return self.bless( * , :soupName('QuahogChowder'), :soupIngredients( [
        "1 Pound Fresh Quahogs",
        "1 cup corn",
        "1/2 cup heavy cream",
        "1/4 cup butter",
        "1/4 cup potato chips",
		]) )
	}
}

