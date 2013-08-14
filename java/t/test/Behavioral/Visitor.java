package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;


import Behavioral.Visitor.*;

class Visitor {
   public static void main(String[] args) 
	{
		AbstractTitleInfo bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
		AbstractTitleInfo electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
		AbstractTitleInfo sheepRaider = new GameInfo("Sheep Raider");

		TitleBlurbVisitor titleLongBlurbVisitor = new TitleLongBlurbVisitor();
     

		bladeRunner.accept(titleLongBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing bladeRunner long  " , 
			"LB-DVD: Blade Runner, starring Harrison Ford, encoding region 1",
			titleLongBlurbVisitor.getTitleBlurb()
		);


		electricSheep.accept(titleLongBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing electricSheep long " , 
			"LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick",
			titleLongBlurbVisitor.getTitleBlurb()
		);

		sheepRaider.accept(titleLongBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing sheepRaider long " , 
			"LB-Game: Sheep Raider",
			titleLongBlurbVisitor.getTitleBlurb()
		);

		TitleBlurbVisitor titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		bladeRunner.accept(titleShortBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing bladerunner short " , 
			"SB-DVD: Blade Runner",
			titleShortBlurbVisitor.getTitleBlurb()
		);


		electricSheep.accept(titleShortBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing electricSheep short " ,
			"SB-Book: Do Androids Dream of Electric Sheep?",
			titleShortBlurbVisitor.getTitleBlurb()
		);

		sheepRaider.accept(titleShortBlurbVisitor);
		org.junit.Assert.assertEquals( 	"Testing sheepRaider short  " , 
			"SB-Game: Sheep Raider"	,
			titleShortBlurbVisitor.getTitleBlurb()
		);
	}
}      
