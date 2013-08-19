//TestChaiDecorator - testing the decorator











import (
	"testing"
	"../../lib/asserts"
)

func TestDecorator {            
   
	@Test 
   public void thetester() {
       Tea teaLeaves = new TeaLeaves()
       Tea chaiDecorator = new ChaiDecorator(teaLeaves)
       asserts.Equals( t, "Decorator test",
				"bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping",
				chaiDecorator.steepTea() )
   }
}
