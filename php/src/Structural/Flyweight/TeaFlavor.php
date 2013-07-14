<?

#//TeaFlavor.java - the Concrete Flyweight

require_once 'TeaOrder.php';


class TeaFlavor extends TeaOrder
{

public $teaFlavor;

function __construct($flavor)
{
		$this->teaFlavor = $flavor ;
}
   
function serveTea($ctx)
{
	return "Serving tea flavor " . $this->teaFlavor . " to table number " . $ctx->tableNumber ;
}

}
