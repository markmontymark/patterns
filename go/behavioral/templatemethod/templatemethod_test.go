//TestTitleInfoTemplate.java - testing the Template

package templatemethod

import (
	"testing"
	"../../lib/asserts"
)


func TestTemplateMethod (t *testing.T) {
   
	bladeRunner := NewDvdTitleInfo("Blade Runner", "Harrison Ford", "1") 
	electricSheep := NewBookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")        
	sheepRaider := NewGameTitleInfo("Sheep Raider")

	asserts.Equals( t, "Testing bladeRunner" ,   
		"DVD: Blade Runner, starring Harrison Ford, encoding region: 1",
		ProcessTitleInfo(bladeRunner))

	asserts.Equals( t, "Testing electricSheep" , 
		"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ",
		ProcessTitleInfo(electricSheep))

	asserts.Equals( t, "Testing sheepRaider" ,
		"Game: Sheep Raider ",
		ProcessTitleInfo(sheepRaider))
}
