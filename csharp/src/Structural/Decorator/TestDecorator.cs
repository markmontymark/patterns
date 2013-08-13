//TestChaiDecorator.java - testing the decorator


namespace Structural.Decorator {

using tap;


class TestDecorator {            
    
   public static void Main() {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
		 Tapper tap = new Tapper();
			tap.test("steep chai test", chaiDecorator.steepTea() , ("bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping"));
		tap.done();
		
   }
}

}
