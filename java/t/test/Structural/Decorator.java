//TestChaiDecorator.java - testing the decorator


package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Decorator.*;




public class Decorator {            
   
	@Test 
   public void thetester() {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
       org.junit.Assert.assertEquals("Decorator test",
				"bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping",
				chaiDecorator.steepTea() );
   }
}
