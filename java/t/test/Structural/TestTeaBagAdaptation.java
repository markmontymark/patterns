package test.Structural;

import tap.*;
import Structural.Adapter.*;



//TestTeaBagAdaptation.java - testing the adapter

class TestTeaBagAdaptation {

   public static void main(String[] args) {
		Tapper tap = new Tapper();
       TeaCup teaCup = new TeaCup();

       tap.test("Steeping tea bag");
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);

       tap.test("Steeping loose leaf tea");
       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
		tap.done();
   }
}      
