
package memento

import (
	"testing"
	"../../lib/asserts"
)


func TestMemento (t *testing.T) {

	stars := make([]string,0)
	stars = append(stars,"Guy Pearce")
	dvdDetails := NewDvdDetails("Memento", stars, "1")
	dvdMementoCaretaker := dvdDetails.CreateDvdMemento()

	asserts.Equals( t, "Testing original state", 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1",
		dvdDetails.FormatDvdDetails())
       
   dvdDetails.AddStar("edskdzkvdfb")
   asserts.Equals( t, "Testing after adding star",
		"DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1",
		dvdDetails.FormatDvdDetails() )
       
	asserts.Equals( t, "Memento state", 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1",
		dvdMementoCaretaker.ShowMemento())

	//show the memento
	dvdDetails.SetDvdMemento(dvdMementoCaretaker)

	//back off changes
	asserts.Equals( t, "Showing state revised to reflect memento state", 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1",
		dvdDetails.FormatDvdDetails())
}      
