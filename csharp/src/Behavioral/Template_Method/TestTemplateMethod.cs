//TestTitleInfoTemplate.java - testing the Template

namespace Behavioral.Template_Method {


using tap;

class TestTemplateMethod {
    
   public static void Main() {
		TitleInfo bladeRunner = new DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
		TitleInfo electricSheep = new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
		TitleInfo sheepRaider = new GameTitleInfo("Sheep Raider");

		Tapper tap = new Tapper();
		tap.test("Testing bladeRunner   " ,
			bladeRunner.ProcessTitleInfo().ToString() , 
			"DVD: Blade Runner, starring Harrison Ford ");
		tap.test("Testing electricSheep " ,
			electricSheep.ProcessTitleInfo().ToString() , 
			"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ");
		tap.test("Testing sheepRaider   " ,
			sheepRaider.ProcessTitleInfo().ToString() , 
			"Game: Sheep Raider ");
		tap.done();
   }
}

}
