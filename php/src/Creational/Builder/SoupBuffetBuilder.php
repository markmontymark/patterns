<?

require_once 'src/common/require_all.php';

abstract class SoupBuffetBuilder
{
	abstract function setSoupBuffetName();

	public $soupBuffet;
        
	function getSoupBuffet() {
		
		return$this->soupBuffet;
	}

	function buildSoupBuffet() { $this->soupBuffet = new SoupBuffet(); }
	function buildChickenSoup() { $this->soupBuffet->chickenSoup = new ChickenSoup(); }
	function buildClamChowder() { $this->soupBuffet->clamChowder= new ClamChowder(); }
	function buildFishChowder() { $this->soupBuffet->fishChowder = new FishChowder(); }
	function buildMinnestrone() { $this->soupBuffet->minnestrone = new Minnestrone(); }
	function buildPastaFazul() { $this->soupBuffet->pastaFazul = new PastaFazul(); }
	function buildTofuSoup() { $this->soupBuffet->tofuSoup = new TofuSoup(); }
	function buildVegetableSoup() { $this->soupBuffet->vegetableSoup= new VegetableSoup() ; }

}
