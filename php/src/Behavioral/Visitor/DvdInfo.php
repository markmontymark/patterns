<?

#//DvdInfo- two of three concrete Visitees

require_once 'AbstractTitleInfo.php';

class DvdInfo extends AbstractTitleInfo
{

	private $star;
	private $region;

	function __construct( $titleName, $star, $region )
	{
		parent::__construct( $titleName );
		$this->setStar( $star );
		$this->setRegion( $region);
	}

	function setStar($star) {
		$this->star = $star; 
	}
	function getStar() { return $this->star; }

	function setRegion($region) { $this->region = $region; }
	function getRegion() { return $this->region; }
   
	function accept(TitleBlurbVisitor &$tbv)
	{
		$tbv->visit($this);
	} 

}
