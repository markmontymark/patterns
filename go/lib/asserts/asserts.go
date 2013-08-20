package asserts

import "testing"

func Equals (t *testing.T, name string , got string, expected string ) {
   if got != expected {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n%s\n\n", name, got, expected )
   }
}

func IntEquals (t *testing.T, name string , got int, expected int ) {
   if got != expected {
      t.Errorf("Failed %s\ngot\n%d\n\nexpected\n%d\n\n", name, got, expected )
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

func Nil (t *testing.T, name string , got ...interface{}) {
   if got == nil {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n%s\n\n", name, got, nil)
   }
}

func NotNil (t *testing.T, name string , got ...interface{}) {
   if got != nil {
      t.Errorf("Failed %s\ngot\n%s\n\nexpected\n(not nil)\n\n", name, got)
   }
}
