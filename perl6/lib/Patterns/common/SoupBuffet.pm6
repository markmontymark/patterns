#//SoupBuffet - A helper class

use Patterns::common::ChickenSoup;
use Patterns::common::ClamChowder;
use Patterns::common::FishChowder;
use Patterns::common::Minnestrone;
use Patterns::common::PastaFazul;
use Patterns::common::TofuSoup;
use Patterns::common::VegetableSoup;

class SoupBuffet {

	has Str $.soupBuffetName is rw;
	has ChickenSoup $.chickenSoup  is rw;
	has ClamChowder $.clamChowder  is rw;
	has FishChowder $.fishChowder  is rw;
	has Minnestrone $.minnestrone  is rw;
	has PastaFazul $.pastaFazul is rw;
	has TofuSoup $.tofuSoup is rw;
	has VegetableSoup $.vegetableSoup is rw;


	method getTodaysSoups 
	{
	  ' Today\'s Soups!  ' ~
		  ' Chicken Soup: ' ~
		  $.chickenSoup.soupName ~
		  " Clam Chowder: " ~
		  $.clamChowder.soupName ~
		  " Fish Chowder: " ~
		  $.fishChowder.soupName ~
		  " Minnestrone: " ~
		  $.minnestrone.soupName ~
		  " Pasta Fazul: " ~
		  $.pastaFazul.soupName ~
		  " Tofu Soup: " ~
		  $.tofuSoup.soupName ~
		  " Vegetable Soup: " ~
		  $.vegetableSoup.soupName
	}
}

