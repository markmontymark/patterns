package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Adapter.*;



//TestTeaBagAdaptation.java - testing the adapter

class TestTeaBagAdaptation {

   public static void main(String[] args) {
		

       TeaCup teaCup = new TeaCup();       
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);
       org.junit.Assert.assertEquals("Steeping tea bag",
			"",
			teaCup.toString());

       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
       org.junit.Assert.assertEquals("Steeping loose leaf tea",
				"",
				teaCup.toString()
		);
   }
}      
