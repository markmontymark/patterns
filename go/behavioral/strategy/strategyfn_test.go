
package strategy

import (
	"testing"
	"strings"
	"../../lib/asserts"
)


func capitalize (name string) string {
	return strings.ToUpper(name)
}
func move_the_to_end (name string) string {
	 if strings.Index( strings.ToLower(name),"the ") == 0 {
		  return name[4:] + ", " + name[0:3]
	 }
	 return name
}
func make_replacer (charFrom, charTo string) func (string) string {
	return func (name string) string {
		return strings.Replace(name, charFrom, charTo, -1)
	}
}

func FormatNames( formatter func (string) string, namesIn []string) []string {
	namesOut := make([]string, len(namesIn), cap(namesIn))
	for i := 0 ; i < len(namesOut); i += 1 {
		namesOut[i] = formatter(namesIn[i])
	}
	return namesOut
}


func TestStrategyFn (t *testing.T) {

	names := []string{
		"Jay and Silent Bob Strike Back",
		"The Fast and the Furious",
		"The Others" }

	asserts.Equals( t, "Testing formatting with all caps", 
		"JAY AND SILENT BOB STRIKE BACK, THE FAST AND THE FURIOUS, THE OTHERS",
		strings.Join( FormatNames( capitalize, names), ", "))

	asserts.Equals( t, "Testing formatting with beginning the at end", 
		"Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The",
		strings.Join( FormatNames( move_the_to_end, names), ", "))

	asserts.Equals( t, "Testing formatting with all spaces replaced with *", 
		"Jay*and*Silent*Bob*Strike*Back, The*Fast*and*the*Furious, The*Others",
		strings.Join( FormatNames( make_replacer(" ","*"), names), ", "))
}

