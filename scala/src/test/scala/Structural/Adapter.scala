package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Adapter.*;



//TestTeaBagAdaptation - testing the adapter

public class Adapter {

	@Test
   public void thetester() {
		

       TeaCup teaCup = new TeaCup();       
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);
       org.junit.Assert.assertTrue("Steeping tea bag",
			teaBag.teaBagIsSteeped );

       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
       org.junit.Assert.assertTrue("Steeping loose leaf tea",
				looseLeafTea.teaIsSteeped
		);
   }
}      
