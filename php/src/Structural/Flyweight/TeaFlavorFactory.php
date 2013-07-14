<?

#//TeaFlavorFactory.java - the Factory

require_once 'TeaFlavor.php';

class TeaFlavorFactory {

public $flavors;
public $teasMade;

function __construct()
{
	$this->flavors = []; 
	$this->teasMade = 0;
}
   
function getTeaFlavor($flavor)
{
	if ($this->teasMade > 0) 
	{
		foreach( $this->flavors as $flav )
			if($flavor === $flav->teaFlavor)
				return $flav ;
	}
	$this->flavors[]= new TeaFlavor($flavor);
	$this->teasMade++;
	return $this->flavors[ $this->teasMade - 1 ];
}
   

}
