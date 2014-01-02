

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Singleton
#//Singleton Overview
#//A class distributes the only instance of itself.

class SingleSpoon {

	our $.theSpoon;

	has Bool $.isAvailable is rw = True;

	method new 
	{
		unless $.theSpoon.defined {
			$.theSpoon = self.bless();
		}
		return $.theSpoon;
	}

	method useSpoon
	{
		$.isAvailable = False if $.isAvailable;
	}


	method toString 
	{
		'The spoon is' ~ ($.isAvailable ?? ' ' !! ' not ') ~ 'available.'
	}

	method returnSpoon
	{
		$.isAvailable = True;
	}   

}
