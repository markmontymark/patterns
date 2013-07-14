<?

#//FacadeWater.java - two of three classes the facade calls
class FacadeWater {

public $isBoiling;

function __construct()
{
	$this->isBoiling = 0;
}
    
function boil()
{
	$this->isBoiling = 1;
}

}
