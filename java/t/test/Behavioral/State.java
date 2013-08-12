//TestState.java - testing the State

package test.Behavioral;

import Behavioral.State.*;
import tap.*;



class TestState {
   public static void main(String[] args) 
   {
		final DvdStateContext stateContext = new DvdStateContext();

		Tapper tap = new Tapper();
		tap.test( "State 1 test", new TestCase(){public void test(){
			assert stateContext.showName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies").equals("bork");
		}});
		tap.test( "State 2 test", new TestCase(){public void test(){
			assert stateContext.showName( "Jay and Silent Bob Strike Back").equals("bork");  
		}});
		tap.test( "State 3 test", new TestCase(){public void test(){
			assert stateContext.showName( "Buffy The Vampire Slayer Season 2").equals("bork");
		}});
		tap.test( "State 4 test", new TestCase(){public void test(){
			assert stateContext.showName( "The Sopranos Season 2").equals("bork");
		}});
		tap.done();
	}
}      
