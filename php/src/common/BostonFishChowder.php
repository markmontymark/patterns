<?

require_once 'FishChowder.php';

class BostonFishChowder extends FishChowder
{

	function __construct()
	{
       $this->soupName = "ScrodFishChowder";
       $this->soupIngredients = [
       "1 Pound Fresh Scrod",
       "1 cup corn",
       "1/2 cup heavy cream",
       "1/4 cup butter",
       "1/4 cup potato chips",
      ];
    }
}
