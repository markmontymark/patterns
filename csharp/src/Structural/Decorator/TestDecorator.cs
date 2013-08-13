//TestChaiDecorator.java - testing the decorator


namespace Structural.Decorator {

using tap;


class TestDecorator {            
    
   public static void Main() {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
		 Tapper tap = new Tapper();
			tap.test("steep chai test", chaiDecorator.steepTea().Equals("asdf"));
		tap.done();
		
   }
}

}
