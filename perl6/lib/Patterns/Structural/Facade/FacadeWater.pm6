#//FacadeWater - two of three classes the facade calls

class FacadeWater {

	has Bool $.isBoiling is rw = False;

	method boil
	{
		$.isBoiling = True;
	}

}
