<?

#//DvdTitleInfo - one of three concrete templates

require_once 'TitleInfo.php';

class DvdTitleInfo extends TitleInfo
{

	private $star;
	private $region;

	function __construct($titleName,$star,$region)
	{
		$this->setTitleName($titleName);
		$this->star = $star;
		$this->region = $region;
	}

	function setStar($s) { $this->star($s); }
	function getStar() {	return $this->star; }
	function setRegion($r) { $this->region = $r; }
	function getRegion(){	return $this->region; }
		
	function getTitleBlurb()
	{
		return "DVD: " . $this->getTitleName() .  ", starring " . $this->getStar();
	}
}

