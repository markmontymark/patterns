#//TitleInfo - the abstract Template

role TitleInfo {

	has $.titleName is rw;

	method getTitleBlurb { ... }

	#//the "template method" - 
	#   //  calls the concrete class methods, is not overridden
	method ProcessTitleInfo 
	{
		self.getTitleBlurb() ~ self.getRegionInfo()
	}  
		
	method setTitleName( Str $t )
	{
		$.titleName = $t
	}

	method getTitleName
	{
		$.titleName
	}

	#   //this is a "hook operation", which may be overridden, 
	#   //hook operations usually do nothing if not overridden 
	method  getRegionInfo 
	{
		' '
	}

}
