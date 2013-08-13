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
			bladeRunner.ProcessTitleInfo().Equals("bork"));
		tap.test("Testing electricSheep " ,
			electricSheep.ProcessTitleInfo().Equals("bork"));
		tap.test("Testing sheepRaider   " ,
			sheepRaider.ProcessTitleInfo().Equals("bork"));
		tap.done();
   }
}

}
