//TestTeaBagAdaptation.java - testing the adapter

namespace Structural.Adapter {

using tap;



class TestAdapter {

   public static void Main() {
		Tapper tap = new Tapper();
       TeaCup teaCup = new TeaCup();

       tap.test("Steeping tea bag", teaCup != null);
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);
       tap.test("Steeping tea bag ", teaBag.teaBagIsSteeped);

       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
       tap.test("Steeping loose leaf tea", looseLeafTea.teaIsSteeped);

		tap.done();
   }
}

}      
