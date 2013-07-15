<?

require_once 'Soup.php';


class VegetableSoup extends Soup
{


	function __construct()
	{
      $this->soupName = "Vegetable Soup";
      $this->soupIngredients = [
        "1 cup bullion",
        "1/4 cup carrots",
        "1/4 cup potatoes",
      ];
	}
}
