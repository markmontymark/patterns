#//FacadeTeaCup - one of three classes the facade calls

use Patterns::Structural::Facade::FacadeWater;
use Patterns::Structural::Facade::FacadeTeaBag;

class FacadeTeaCup {

	has Bool $.teaBagIsSteeped is rw;
	has FacadeWater $.water is rw;
	has FacadeTeaBag $.teaBag is rw;
    
	method new
	{
		return self.bless( * , :teaBagIsSteeped(False) );	
	}    
   
	method steepTeaBag 
	{
		if $.teaBag.defined && $.water.defined && $.water.isBoiling() 
		{
			$.teaBagIsSteeped = True;
			"the tea is steeping in the cup"
		} 
		else 
		{
			$.teaBagIsSteeped = False;
			"the tea is not steeping in the cup"
		}           
	}
		
	method toString
	{
		return "A nice cuppa tea!" if $.teaBagIsSteeped;
		my $tempString = "A cup with ";
		if $.water.defined {
			$tempString ~=  $.water.isBoiling() ?? "boiling water " !! "cold water ";
		}
		else 
		{
			$tempString ~= "no water ";
		}

		$tempString ~= $.teaBag.defined ?? "and a tea bag" !! "and no tea bag";
		$tempString
	}

}
