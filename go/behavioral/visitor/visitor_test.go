package visitor

import (
	"testing"
	"../../lib/asserts"
)

func TestVisitor (t *testing.T){

	bladeRunner := NewDvdInfo("Blade Runner", "Harrison Ford", "1")
	electricSheep := NewBookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
	sheepRaider := NewGameInfo("Sheep Raider")

	lbv := NewTitleLongBlurbVisitor()
     

	bladeRunner.Accept(lbv)
	asserts.Equals( t,
		"Testing bladeRunner long  " , 
		"LB-DVD: Blade Runner, starring Harrison Ford, encoding region 1",
		lbv.GetTitle())


		electricSheep.Accept(lbv)
		asserts.Equals( t, 	"Testing electricSheep long " , 
			"LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick",
			lbv.GetTitle())

		sheepRaider.Accept(lbv)
		asserts.Equals( t, 	"Testing sheepRaider long " , 
			"LB-Game: Sheep Raider",
			lbv.GetTitle())

	sbv := NewTitleShortBlurbVisitor()

		bladeRunner.Accept(sbv)
		asserts.Equals( t, 	"Testing bladerunner short " , 
			"SB-DVD: Blade Runner",
			sbv.GetTitle())


		electricSheep.Accept(sbv)
		asserts.Equals( t, 	"Testing electricSheep short " ,
			"SB-Book: Do Androids Dream of Electric Sheep?",
			sbv.GetTitle())

		sheepRaider.Accept(sbv)
		asserts.Equals( t, 	"Testing sheepRaider short  " , 
			"SB-Game: Sheep Raider"	,
			sbv.GetTitle())
}      
