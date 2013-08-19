
package strategy

import (
	"testing"
	"strings"
	"../../lib/asserts"
)

func TestStrategy (t *testing.T) {

	allCapContext := NewDvdNameContext( new(DvdAllCapsStrategy))
	theEndContext := NewDvdNameContext( new(DvdTheAtEndStrategy))
	spacesContext := NewDvdNameContext( new(DvdReplaceSpacesStrategy))

	dvdNames := []string{
		"Jay and Silent Bob Strike Back",
		"The Fast and the Furious",
		"The Others" }

	replaceChar := "*"

	asserts.Equals( t, "Testing formatting with all caps", 
		"JAY AND SILENT BOB STRIKE BACK, THE FAST AND THE FURIOUS, THE OTHERS",
		strings.Join(allCapContext.FormatDvdNames(dvdNames), ", "))

	asserts.Equals( t, "Testing formatting with beginning the at end", 
		"Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The",
		strings.Join(theEndContext.FormatDvdNames(dvdNames), ", "))

	asserts.Equals( t, "Testing formatting with all spaces replaced with " + replaceChar, 
		"Jay*and*Silent*Bob*Strike*Back, The*Fast*and*the*Furious, The*Others",
		strings.Join(spacesContext.FormatDvdNames(dvdNames, replaceChar), ", "))
}
