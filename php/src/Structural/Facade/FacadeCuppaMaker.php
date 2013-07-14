<?

require_once 'FacadeTeaCup.php';
require_once 'FacadeTeaBag.php';
require_once 'FacadeWater.php';

class FacadeCuppaMaker {

public $teaBagIsSteeped;
    
function makeACuppa ()
{
	$cup = new FacadeTeaCup();
	$teaBag = new FacadeTeaBag();
	$water = new FacadeWater();
	$cup->teaBag = $teaBag;
	$water->boil();
	$cup->water = $water;
	$cup->steepTeaBag();
   return $cup;
}

}
