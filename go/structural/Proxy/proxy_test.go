//TestProxy - testing the Proxy









import (
	"testing"
	"../../lib/asserts"
)

func TestProxy {

	@Test
   public void proxy() {
		 
		 PotOfTeaInterface potOfTea = new PotOfTeaProxy()
       asserts.Equals( t, "TestProxy: pouring tea", 
			 "Pouring tea",
			 potOfTea.pourTea()
		)
   }
}
