//TestProxy - testing the Proxy

package proxy

import (
	"testing"
	"../../lib/asserts"
)

func TestProxy (t *testing.T){

	potOfTea := new(PotOfTeaProxy)
	asserts.Equals( t, "TestProxy: pouring tea", 
		"Pouring tea",
		potOfTea.PourTea())
}
