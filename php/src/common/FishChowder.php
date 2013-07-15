<?

require_once 'Soup.php';

class FishChowder extends Soup
{

	function __construct()
	{
      $this->soupName = "FishChowder";
      $this->soupIngredients = [
        "1 Pound Fresh fish",
        "1 cup fruit or vegetables",
        "1/2 cup milk",
        "1/4 cup butter",
        "1/4 cup chips",
      ];
    }

}
