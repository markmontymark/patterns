//Strategy.java - testing the strategy

package test.Behavioral;

import Behavioral.Strategy.*;
import tap.*;



class Strategy {            
    
   public static void main(String[] args) {
		final DvdNameContext allCapContext = new DvdNameContext('C');
		final DvdNameContext theEndContext = new DvdNameContext('E');
		final DvdNameContext spacesContext = new DvdNameContext('S');

		final String dvdNames[] = new String[3];
		dvdNames[0] = "Jay and Silent Bob Strike Back";
		dvdNames[1] = "The Fast and the Furious";
		dvdNames[2] = "The Others";

		char replaceChar = '*';       

		Tapper tap = new Tapper();
		tap.test("Testing formatting with all caps", new TestCase(){public void test(){
			assert allCapContext.formatDvdNames(dvdNames).equals("Jay and Silent Bob Strike Back, The Fast and the Furious, The Others");
		}});

		tap.test( "Testing formatting with beginning the at end", new TestCase(){public void test(){
			assert theEndContext.formatDvdNames(dvdNames).equals("Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The");
		}});

		tap.test(" Testing formatting with all spaces replaced with " + replaceChar, new TestCase(){public void test(){
			assert spacesContext.formatDvdNames(dvdNames, replaceChar).equals("Jay*and*Silent*Bob*Strike*Back,*The*Fast*and*the*Furious,*The*Others");
		}});
		tap.done();
	}
}      
