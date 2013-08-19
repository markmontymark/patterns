//TestChaiDecorator - testing the decorator

package decorator

import (
	"testing"
	"../../lib/asserts"
)

func TestDecorator( t *testing.T) {            
   
	chaiDecorator := NewChaiDecorator( NewTeaLeaves() )
	asserts.Equals( t, "Decorator test",
		"tea leaves are steepingbay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping",
		chaiDecorator.SteepTea() )
  
}
