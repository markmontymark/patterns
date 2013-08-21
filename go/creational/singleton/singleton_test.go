
package singleton

import (
	"testing"
	"../../lib/asserts"
)

func TestSingleton (t *testing.T) {
       spoonForFirstPerson := NewSpoon()
       spoonForSecondPerson := NewSpoon()

       asserts.True( t, "First person is Second person ",spoonForSecondPerson == spoonForFirstPerson )

       asserts.True( t, "Returning an unused spoon is true", spoonForFirstPerson.ReturnTheSpoon() )
       asserts.True( t, "Using an unused spoon is true", spoonForFirstPerson.UseTheSpoon() )
       asserts.False( t, "Using a used spoon is false", spoonForSecondPerson.UseTheSpoon() )
       asserts.True( t, "Returning a used spoon is true", spoonForFirstPerson.ReturnTheSpoon() )
       
       spoonForSecondPerson = NewSpoon()
       asserts.True( t, "First person is still Second person ",spoonForSecondPerson == spoonForFirstPerson )
}      
