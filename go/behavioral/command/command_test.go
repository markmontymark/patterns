package command

import (
	"testing"
	"../../asserts"
)

func TestCommand( t *testing.T) {            
	jayAndBob := NewDvdName("Jay and Silent Bob Strike Back")
	spongeBob := NewDvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")

	bobStarsOn := NewDvdCommandNameStarsOn(jayAndBob)
	//bobStarsOff := NewDvdCommandNameStarsOff(jayAndBob)
	spongeStarsOn := NewDvdCommandNameStarsOn(spongeBob)
	spongeStarsOff := NewDvdCommandNameStarsOff(spongeBob)

	bobStarsOn.execute()
	spongeStarsOn.execute()

	asserts.Equals(t, "stars on jb test ", jayAndBob.ToString(),  "DVD: Jay*and*Silent*Bob*Strike*Back")
	asserts.Equals(t, "stars on sb test ", spongeBob.ToString(),  "DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies" )

	spongeStarsOff.execute()

	asserts.Equals(t, "sponge stars off test jb should be the same", jayAndBob.ToString(), "DVD: Jay*and*Silent*Bob*Strike*Back")
	asserts.Equals(t, "sponge stars off test sb should be changed", spongeBob.ToString(), "DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")
}      
