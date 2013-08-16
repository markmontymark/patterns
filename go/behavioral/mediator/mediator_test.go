
package mediator

import (
	"testing"
	"../../lib/asserts"
)


func TestMediator (t *testing.T) {            

       dvdMediator := NewDvdMediator()
       dvdLower := NewDvdLowercaseTitle("Mulholland Dr.", dvdMediator)
       dvdUp := NewDvdUpcaseTitleFromObj(dvdLower, dvdMediator)
       
       asserts.Equals( t, "Lowercase LC title :" , 	"mulholland dr.", dvdLower.GetLowercaseTitle()	)
       asserts.Equals( t, "Lowercase super title :" , "Mulholland Dr.", dvdLower.GetTitle()				)
       asserts.Equals( t, "Upcase UC title :" , 		"MULHOLLAND DR.", dvdUp.GetUpcaseTitle()			)
       asserts.Equals( t, "Upcase super title :" , 	"Mulholland Dr.", dvdUp.GetTitle()					)
       
       dvdLower.SetSuperTitleLowercase()
       
       asserts.Equals( t, "Lowercase LC title :" , 	"mulholland dr.", dvdLower.GetLowercaseTitle()	)
       asserts.Equals( t, "Lowercase super title :" , "mulholland dr.", dvdLower.GetTitle()				)
       asserts.Equals( t, "Upcase UC title :" , 		"MULHOLLAND DR.", dvdUp.GetUpcaseTitle()			)
       asserts.Equals( t, "Upcase super title :" , 	"mulholland dr.", dvdUp.GetTitle()					)
}      
