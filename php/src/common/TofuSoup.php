<?

require_once 'Soup.php';


class TofuSoup extends Soup
{

	function __construct()
	{
      	$this->soupName = "Tofu Soup";
      	$this->soupIngredients = [
			  "1 Pound tofu",
			  "1 cup carrot juice",
			  "1/4 cup spirolena",
			];
    }
}
