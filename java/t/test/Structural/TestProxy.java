//TestProxy.java - testing the Proxy


package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Proxy.*;


class TestProxy {

	@Test
   public void proxy() {
		 
		 PotOfTeaInterface potOfTea = new PotOfTeaProxy();
       org.junit.Assert.assertEquals("TestProxy: pouring tea", 
			 "Pouring tea",
			 potOfTea.pourTea()
		);
   }
}
