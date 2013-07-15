<?

require_once 'ClamChowder.php';


class BostonClamChowder extends ClamChowder
{

	function __construct()
	{
		$this->soupName = "QuahogChowder";
		$this->soupIngredients = [
        "1 Pound Fresh Quahogs",
        "1 cup corn",
        "1/2 cup heavy cream",
        "1/4 cup butter",
        "1/4 cup potato chips",
		];
	}

}
