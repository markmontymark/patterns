<?

class DvdStateNameExclaim implements DvdStateName
{

	function getName ($ctx,$name)
	{
		$t = $name;
		$t = str_replace(' ','!',$t);
		#//show exclaim only once, switch back to stars
		$ctx->setDvdStateName(new DvdStateNameStars());
		return $t;
	}
}


