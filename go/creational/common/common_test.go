

package common

import (
	"testing"
	"../../lib/asserts"
)

func TestCommon( t *testing.T ) {
	
	obj1  := NewBostonClamChowder()
	asserts.True( t, "ctor ", obj1 != nil )
	obj2  := NewBostonFishChowder()
	asserts.True( t, "ctor ", obj2 != nil )
	obj3  := NewChickenSoup()
	asserts.True( t, "ctor ", obj3 != nil )
	obj4  := NewClamChowder()
	asserts.True( t, "ctor ", obj4 != nil )
	obj5  := NewFishChowder()
	asserts.True( t, "ctor ", obj5 != nil )
	obj6  := NewHonoluluClamChowder()
	asserts.True( t, "ctor ", obj6 != nil )
	obj7  := NewHonoluluFishChowder()
	asserts.True( t, "ctor ", obj7 != nil )
	obj8  := NewMinnestrone()
	asserts.True( t, "ctor ", obj8 != nil )
	obj9  := NewPastaFazul()
	asserts.True( t, "ctor ", obj9  != nil )
	obj10 := NewSoupBuffet()
	asserts.True( t, "ctor ", obj10 != nil )
	obj12 := new(SoupImpl)
	asserts.True( t, "ctor ", obj12 != nil )
	obj13 := NewTofuSoup()
	asserts.True( t, "ctor ", obj13 != nil )
	obj14 := NewVegetableSoup()
	asserts.True( t, "ctor ", obj14 != nil )
}
