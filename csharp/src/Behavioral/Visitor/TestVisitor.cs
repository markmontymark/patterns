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
			 titleLongBlurbVisitor.getTitleBlurb() , ("bork"));


		electricSheep.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing electricSheep long " ,
			 titleLongBlurbVisitor.getTitleBlurb() , ("bork"));

		sheepRaider.accept(titleLongBlurbVisitor);
		tap.test( 	"Testing sheepRaider long " , 
			 titleLongBlurbVisitor.getTitleBlurb() , ("bork"));

		TitleBlurbVisitor titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		bladeRunner.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing bladerunner short " ,
			 titleShortBlurbVisitor.getTitleBlurb() , ("bork"));


		electricSheep.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing electricSheep short " ,
			 	titleShortBlurbVisitor.getTitleBlurb() , ("bork"));


		sheepRaider.accept(titleShortBlurbVisitor);
		tap.test( 	"Testing sheepRaider short  " ,
			 titleShortBlurbVisitor.getTitleBlurb() , ("bork"));
	}
}      

}
