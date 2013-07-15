<?

require_once 'Soup.php';


class PastaFazul extends Soup
{
	function __construct()
	{
      $this->soupName = "Pasta Fazul";
      $this->soupIngredients = [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1/2 cup diced carrots",
        "1 cup tomato juice",
      ];
    }
}
