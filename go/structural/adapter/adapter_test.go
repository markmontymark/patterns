

package adapter


import (
	"testing"
	"../../lib/asserts"
)

func TestAdapter(t *testing.T) {

	teaCup := NewTeaCup()
	teaBag := NewTeaBag()

	teaCup.SteepTeaInCup( teaBag)
	asserts.True( t, "Steeping tea bag ", teaBag.TeaBagIsSteeped ) 

	looseLeafTea := NewLooseLeafTea()
	teaBall := NewTeaBall(looseLeafTea)
	teaCup.SteepTeaInCup( teaBall)
	asserts.True( t, "Steeping loose leaf tea", looseLeafTea.TeaIsSteeped)
}      
