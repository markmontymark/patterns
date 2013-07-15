<?

require_once 'Soup.php';


class ChickenSoup extends Soup
{

	function __construct()
	{
      $this->soupName = "ChickenSoup";
      $this->soupIngredients = [
        "1 Pound diced chicken",
        "1/2 cup rice",
        "1 cup bullion",
        "1/16 cup butter",
        "1/4 cup diced carrots",
      ];
    }
}
