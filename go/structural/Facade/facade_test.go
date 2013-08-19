//TestFacade - testing the Facade











import (
	"testing"
	"../../lib/asserts"
)

func TestFacade {

	@Test
   public void facade () {
       FacadeCuppaMaker cuppaMaker = new FacadeCuppaMaker()
       FacadeTeaCup teaCup = cuppaMaker.makeACuppa()
		
       asserts.Equals( t, "Facade test", 
			"A nice cuppa tea!",
			teaCup.tostring()
		)
   }
}
