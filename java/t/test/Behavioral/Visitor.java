package test.Behavioral;


import tap.*;
import Behavioral.Visitor.*;

class Visitor {
   public static void main(String[] args) {
		AbstractTitleInfo bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
		AbstractTitleInfo electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
		AbstractTitleInfo sheepRaider = new GameInfo("Sheep Raider");

		final TitleBlurbVisitor titleLongBlurbVisitor = new TitleLongBlurbVisitor();
     
		Tapper tap = new Tapper();


		bladeRunner.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing bladeRunner long  " , new TestCase(){ public void testCase(){
			assert titleLongBlurbVisitor.getTitleBlurb().equals("bork");
		}});


		electricSheep.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing electricSheep long " , new TestCase(){ public void testCase(){
			assert titleLongBlurbVisitor.getTitleBlurb().equals("bork");
		}});

		sheepRaider.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing sheepRaider long " , new TestCase(){ public void testCase(){
			assert titleLongBlurbVisitor.getTitleBlurb().equals("bork");
		}});

		final TitleBlurbVisitor titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		bladeRunner.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing bladerunner short " , new TestCase(){ public void testCase(){
			assert titleShortBlurbVisitor.getTitleBlurb().equals("bork");
		}});


		electricSheep.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing electricSheep short " , new TestCase(){ public void testCase(){
			assert 	titleShortBlurbVisitor.getTitleBlurb().equals("bork");
		}});


		sheepRaider.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing sheepRaider short  " , new TestCase(){ public void testCase(){
			assert titleShortBlurbVisitor.getTitleBlurb().equals("bork");
		}});
	}
}      
