package asserts

import "testing"

func Equals (t *testing.T, name string , got string, expected string ) {
   if got != expected {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n%s\n\n", name, got, expected )
   }
}

func True (t *testing.T, name string , got bool ) {
   if !got {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n%s\n\n", name, got, true)
   }
}

func False (t *testing.T, name string , got bool ) {
   if got {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n%s\n\n", name, got, false)
   }
}

