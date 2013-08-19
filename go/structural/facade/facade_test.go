//TestFacade - testing the Facade

package facade

import (
	"testing"
	"../../lib/asserts"
)

func TestFacade( t *testing.T ) {

	cuppaMaker := NewFacadeCuppaMaker()
	teaCup := cuppaMaker.MakeACuppa()
	asserts.Equals( t, "Facade test", 
		"A nice cuppa tea!",
		teaCup.ToString() )
}
