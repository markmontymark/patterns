<?

#//SoupBuffet.java - A helper class

require_once 'src/common/require_all.php';

class SoupBuffet
{

	public $soupBuffetName;
	public $chickenSoup;
	public $clamChowder;
	public $fishChowder;
	public $minnestrone;
	public $pastaFazul;
	public $tofuSoup;
	public $vegetableSoup;

	function getTodaysSoups ()
	{
	  return " Today's Soups!  ".
		  " Chicken Soup: " .
		 $this->chickenSoup->soupName .
		  " Clam Chowder: " .
		 $this->clamChowder->soupName .
		  " Fish Chowder: " .
		 $this->fishChowder->soupName .
		  " Minnestrone: " .
		 $this->minnestrone->soupName .
		  " Pasta Fazul: " .
		 $this->pastaFazul->soupName .
		  " Tofu Soup: " .
		 $this->tofuSoup->soupName .
		  " Vegetable Soup: " .
		 $this->vegetableSoup->soupName;
	}

}
