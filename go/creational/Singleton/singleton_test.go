
package singleton

import (
	"fmt"
	"testing"
	"../../lib/asserts"
)

func TestSingleton (t *testing.T) {
       spoonForFirstPerson := NewSpoon()
       asserts.True( t, "First spoon instance ", spoonForFirstPerson != nil )
       
       spoonForSecondPerson := NewSpoon()
		fmt.Printf("what is spoonForSecondPerson %s\n",spoonForSecondPerson)
       asserts.True( t, "Second person getting a spoon",spoonForSecondPerson == nil)
       
       asserts.False( t, "Returning an unused spoon is false", spoonForFirstPerson.ReturnTheSpoon() )
       asserts.True( t, "Using an unused spoon is true", spoonForFirstPerson.UseTheSpoon() )
       asserts.True( t, "Returning a used spoon is true", spoonForFirstPerson.ReturnTheSpoon() )
       //spoonForFirstPerson = null
       
       spoonForSecondPerson = NewSpoon()
       asserts.NotNil(  t, "Second person getting a spoon again ", spoonForSecondPerson)
}      
