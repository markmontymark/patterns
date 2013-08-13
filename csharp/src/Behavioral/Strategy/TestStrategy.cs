//Strategy.java - testing the strategy

namespace Behavioral.Strategy {

using tap;
using System;
using System.Collections.Generic;



class TestStrategy {            
    
   public static void Main() {
		DvdNameContext allCapContext = new DvdNameContext('C');
		DvdNameContext theEndContext = new DvdNameContext('E');
		DvdNameContext spacesContext = new DvdNameContext('S');

		List<string> dvdNames = new List<string>(3);
		dvdNames[0] = "Jay and Silent Bob Strike Back";
		dvdNames[1] = "The Fast and the Furious";
		dvdNames[2] = "The Others";

		char replaceChar = '*';       

		Tapper tap = new Tapper();
		tap.test("Testing formatting with all caps", 
			string.Join(", ", allCapContext.formatDvdNames(dvdNames).ToArray()) , ("Jay and Silent Bob Strike Back, The Fast and the Furious, The Others") );

		tap.test( "Testing formatting with beginning the at end", 
			string.Join(", ",theEndContext.formatDvdNames(dvdNames).ToArray()) , ("Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The") );

		tap.test(" Testing formatting with all spaces replaced with " + replaceChar, 
			string.Join(", ",spacesContext.formatDvdNames(dvdNames, replaceChar).ToArray()) , ("Jay*and*Silent*Bob*Strike*Back,*The*Fast*and*the*Furious,*The*Others") );
		tap.done();
	}
}      

}
