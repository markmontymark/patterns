//TestProxy.java - testing the Proxy


namespace Structural.Proxy {

using tap;


class TestProxy {
   public static void Main() {
		PotOfTeaInterface potOfTea = new PotOfTeaProxy();

		 Tapper tap = new Tapper();
       tap.test("TestProxy: pouring tea", potOfTea.pourTea().Equals("Pouring Tea"));
		tap.done();
   }
}

}
