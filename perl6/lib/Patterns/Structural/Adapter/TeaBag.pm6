class TeaBag {

	has Bool $.teaBagIsSteeped is rw = False;
		 
	method steepTeaInCup
	{
		$.teaBagIsSteeped = True;
	}

}
