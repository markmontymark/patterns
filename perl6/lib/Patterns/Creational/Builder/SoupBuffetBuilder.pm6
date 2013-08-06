use Patterns::common::ChickenSoup;
use Patterns::common::ClamChowder;
use Patterns::common::FishChowder;
use Patterns::common::Minnestrone;
use Patterns::common::PastaFazul;
use Patterns::common::TofuSoup;
use Patterns::common::VegetableSoup;
use Patterns::common::SoupBuffet;

role SoupBuffetBuilder {

	has SoupBuffet $.soupBuffet is rw;
        
	method getSoupBuffet {
		return $.soupBuffet;
	}

	method buildSoupBuffet {
		$.soupBuffet = SoupBuffet.new()
	}

	method buildChickenSoup {
		$.soupBuffet.chickenSoup = ChickenSoup.new()
	}
	method buildClamChowder {
		$.soupBuffet.clamChowder = ClamChowder.new()
	}
	method buildFishChowder {
		$.soupBuffet.fishChowder = FishChowder.new()
	}
	method buildMinnestrone {
		$.soupBuffet.minnestrone = Minnestrone.new()
	}
	method buildPastaFazul {
		$.soupBuffet.pastaFazul  = PastaFazul.new()
	}
	method buildTofuSoup {
		$.soupBuffet.tofuSoup  = TofuSoup.new()
	}
	method buildVegetableSoup {
		$.soupBuffet.vegetableSoup = VegetableSoup.new()
	}

}
