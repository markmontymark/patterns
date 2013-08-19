package composite


import (
	"fmt"
	"testing"
	"../../lib/asserts"
)


func TestComposite (t *testing.T) {
		
		tinOfTeaBags := NewTinOfTeaBags("tin of tea bags")

		teaBag1 := NewOneTeaBag("tea bag 1")
		teaBag2 := NewOneTeaBag("tea bag 2")

		asserts.Equals( t, "OneTeaBag count",
			"The teaBag2 has 1 tea bag in it.",
			fmt.Sprintf("The teaBag2 has %d tea bag in it.", teaBag2.CountTeaBags() ) )

		asserts.True( t,  "Putting teaBag1 in tinOfTeaBags", 
			tinOfTeaBags.Add(teaBag1))

		asserts.True( t,  "Putting teaBag2 in tinOfTeaBags", 
			tinOfTeaBags.Add(teaBag2))

		asserts.Equals( t, "TinOfTeaBags count after teabag1 and teabag2 adds", 
			"The tinOfTeaBags now has 2 tea bags in it.",
			fmt.Sprintf("The tinOfTeaBags now has %d tea bags in it." , tinOfTeaBags.CountTeaBags() ))


		smallTinOfTeaBags := NewTinOfTeaBags("small tin of tea bags")
		asserts.Equals( t, "Testing empty small tin",
			"The smallTinOfTeaBags has 0 tea bags in it.",
			fmt.Sprintf("The smallTinOfTeaBags has %d tea bags in it." , smallTinOfTeaBags.CountTeaBags() ))

		teaBag3 := NewOneTeaBag("tea bag 3")
		asserts.True( t, "Putting teaBag3 in smallTinOfTeaBags", 
			smallTinOfTeaBags.Add(teaBag3))

		asserts.Equals( t, "Small tin count",
			"The smallTinOfTeaBags now has 1 tea bags in it.",
			fmt.Sprintf("The smallTinOfTeaBags now has %d tea bags in it." , smallTinOfTeaBags.CountTeaBags() ))

		asserts.True( t,  "Test adding small tin of tea bags to tin of tea bags",
			tinOfTeaBags.Add(smallTinOfTeaBags))

		asserts.Equals( t,  "TinOfTeaBags count before removal ", 
			"The tinOfTeaBags now has 3 tea bags in it.",
			fmt.Sprintf("The tinOfTeaBags now has %d tea bags in it." , tinOfTeaBags.CountTeaBags()  ))

		asserts.True( t, "Removing teaBag2 from tinOfTeaBags", 
			tinOfTeaBags.Remove(teaBag2))

		asserts.Equals( t, "TinOfTeaBags count after removal.", 
			"The tinOfTeaBags now has 2 tea bags in it.",
			fmt.Sprintf("The tinOfTeaBags now has %d tea bags in it." , tinOfTeaBags.CountTeaBags() ))
}  
