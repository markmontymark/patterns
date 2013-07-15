<?

require_once 'Soup.php';


class Minnestrone extends Soup
{

	function __construct()
	{
      $this->soupName = "Minnestrone";
      $this->soupIngredients = [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1 cup tomato juice",
      ];
    }

}
