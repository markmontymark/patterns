//TestTitleInfoTemplate.java - testing the Template

package test.Behavioral;


import tap.*;
import Behavioral.Template_Method.*;



class TemplateMethod {
    
   public static void main(String[] args) {
		TitleInfo bladeRunner = new DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
		TitleInfo electricSheep = new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
		TitleInfo sheepRaider = new GameTitleInfo("Sheep Raider");

		Tapper tap = new Tapper();
		tap.test("Testing bladeRunner   " ,   new TestCase(){public void test(){
			assert bladeRunner.ProcessTitleInfo().equals("bork");
		}});
		tap.test("Testing electricSheep " , new TestCase(){public void test(){
			assert electricSheep.ProcessTitleInfo().equals("bork");
		}});
		tap.test("Testing sheepRaider   " ,   new TestCase(){public void test(){
			assert sheepRaider.ProcessTitleInfo().equals("bork");
		}});
		tap.done();
   }
}
