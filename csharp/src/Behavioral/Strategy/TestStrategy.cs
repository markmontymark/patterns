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

		List<string> dvdNames = new List<string>();
		dvdNames.Add("Jay and Silent Bob Strike Back");
		dvdNames.Add("The Fast and the Furious");
		dvdNames.Add( "The Others");

		char replaceChar = '*';       

		Tapper tap = new Tapper();
		tap.test("Testing formatting with all caps", 
			allCapContext.formatDvdNames(dvdNames) , ("JAY AND SILENT BOB STRIKE BACK, THE FAST AND THE FURIOUS, THE OTHERS") );

		tap.test( "Testing formatting with beginning the at end", 
			theEndContext.formatDvdNames(dvdNames) , ("Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The") );

		tap.test("Testing formatting with all spaces replaced with " + replaceChar, 
			spacesContext.formatDvdNames(dvdNames, replaceChar) , ("Jay*and*Silent*Bob*Strike*Back, The*Fast*and*the*Furious, The*Others") );
		tap.done();
	}
}      

}
