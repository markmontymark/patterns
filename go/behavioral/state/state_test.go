
package state

import (
	"testing"
	"../../lib/asserts"
)

func TestState (t *testing.T) {

		ctx := NewDvdStateContext()

		asserts.Equals( t, "State 1 test", 
			ctx.ShowName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"),
			"Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies")

		asserts.Equals( t, "State 2 test", 
			ctx.ShowName( "Jay and Silent Bob Strike Back"),
			 "Jay*and*Silent Bob Strike Back")

		asserts.Equals( t, "State 3 test", 
			ctx.ShowName( "Buffy The Vampire Slayer Season 2"),
			 "Buffy!The Vampire Slayer Season 2")

		asserts.Equals( t, "State 4 test", 
			ctx.ShowName( "The Sopranos Season 2"),
			 "The*Sopranos Season 2")
		
}      
