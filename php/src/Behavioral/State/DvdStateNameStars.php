<?

#//DvdStateNameStars - two of two Concrete States

require_once 'DvdStateName.php';
require_once 'DvdStateNameExclaim.php';

class DvdStateNameStars implements DvdStateName
{

	public $starCount;

	function __construct()
	{
		$this->starCount = 0;
	}
		 
	function getName($ctx, $name)
	{
		$t = $name;
		$t = str_replace(' ','*', $t);
		# show stars twice, switch to exclamation point
		$this->starCount++;
		if($this->starCount > 1)
			$ctx->setDvdStateName(new DvdStateNameExclaim());
		return $t;
	}
}



