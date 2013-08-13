namespace Behavioral.Visitor {


using tap;

class TestVisitor {
   public static void Main() {
		AbstractTitleInfo bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
		AbstractTitleInfo electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
		AbstractTitleInfo sheepRaider = new GameInfo("Sheep Raider");

		TitleBlurbVisitor titleLongBlurbVisitor = new TitleLongBlurbVisitor();
     
		Tapper tap = new Tapper();


		bladeRunner.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing bladeRunner long  " , 
			 titleLongBlurbVisitor.getTitleBlurb() , ("LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1"));


		electricSheep.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing electricSheep long " ,
			 titleLongBlurbVisitor.getTitleBlurb() , "LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick");

		sheepRaider.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing sheepRaider long " , 
			 titleLongBlurbVisitor.getTitleBlurb() , "LB-Game: Sheep Raider");

		TitleBlurbVisitor titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		bladeRunner.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing bladerunner short " ,
			 titleShortBlurbVisitor.getTitleBlurb() , "SB-DVD: Blade Runner");


		electricSheep.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing electricSheep short " ,
			 	titleShortBlurbVisitor.getTitleBlurb() , "SB-Book: Do Androids Dream of Electric Sheep?");


		sheepRaider.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing sheepRaider short  " ,
			 titleShortBlurbVisitor.getTitleBlurb() , "SB-Game: Sheep Raider");
	}
}      

}
