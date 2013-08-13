//TestFacade.java - testing the Facade


namespace Structural.Facade {

using tap;


class TestFacade {
   public static void Main() {
       FacadeCuppaMaker cuppaMaker = new FacadeCuppaMaker();
       FacadeTeaCup teaCup = cuppaMaker.makeACuppa();
		Tapper tap = new Tapper();
       tap.test("Facade test", 
			teaCup.ToString() , ("A nice cuppa tea!"));
		tap.done();
   }
}

}
