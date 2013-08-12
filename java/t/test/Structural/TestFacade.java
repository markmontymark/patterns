//TestFacade.java - testing the Facade


package test.Structural;

import tap.*;
import Structural.Facade.*;




class TestFacade {
   public static void main(String[] args) {
       FacadeCuppaMaker cuppaMaker = new FacadeCuppaMaker();
       final FacadeTeaCup teaCup = cuppaMaker.makeACuppa();
		Tapper tap = new Tapper();
       tap.test("Facade test", new TestCase(){public void test(){
			assert teaCup.toString().equals("BAsdfasdf");
		}});
		tap.done();
   }
}
