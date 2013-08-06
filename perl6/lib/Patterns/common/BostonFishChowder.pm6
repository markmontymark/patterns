use Patterns::common::FishChowder;

class BostonFishChowder is FishChowder {

	method new
   {
       return self.bless( * , :soupName('ScrodFishChowder'), :soupIngredients( [
			 "1 Pound Fresh Scrod",
			 "1 cup corn",
			 "1/2 cup heavy cream",
			 "1/4 cup butter",
			 "1/4 cup potato chips",
      ] ) )
	}
}


