<?

require_once 'Soup.php';


class ClamChowder extends Soup
{
	function __construct()
	{
      $this->soupName = "ClanChowder";
      $this->soupIngredients = [
        "1 Pound Fresh Clams",
        "1 cup fruit or vegetables",
        "1/2 cup milk",
        "1/4 cup butter",
        "1/4 cup chips",
      ];
	}
}
