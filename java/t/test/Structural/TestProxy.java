//TestProxy.java - testing the Proxy


package test.Structural;

import tap.*;
import Structural.Proxy.*;




class TestProxy {
   public static void main(String[] args) {
		 Tapper tap = new Tapper();
       tap.test("TestProxy: pouring tea", new TestCase(){public void test(){
			 PotOfTeaInterface potOfTea = new PotOfTeaProxy();
			 assert potOfTea.pourTea().equals("Pouring Tea");
		}});
		tap.done();
   }
}
