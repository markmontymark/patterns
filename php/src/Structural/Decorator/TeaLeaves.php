<?

#//TeaLeaves.java - the decoratee

require_once 'Tea.php';

class TeaLeaves implements Tea{

public $teaIsSteeped;

function __construct()
{
	$this->teaIsSteeped = 0;
}

   
function steepTea ()
{
	$this->teaIsSteeped=1;
}

}
