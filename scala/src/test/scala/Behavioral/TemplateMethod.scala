//TestTitleInfoTemplate - testing the Template

package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Template_Method.*;



public class TemplateMethod {
   
	@Test 
   public void templatemethod() {
		TitleInfo bladeRunner = new DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
		TitleInfo electricSheep = new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
		TitleInfo sheepRaider = new GameTitleInfo("Sheep Raider");

		org.junit.Assert.assertEquals("Testing bladeRunner" ,   
			"DVD: Blade Runner, starring Harrison Ford, encoding region: 1",
			bladeRunner.ProcessTitleInfo()
		);
		org.junit.Assert.assertEquals("Testing electricSheep" , 
			"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ",
			electricSheep.ProcessTitleInfo()
		);
		org.junit.Assert.assertEquals("Testing sheepRaider" ,
			"Game: Sheep Raider ",
			sheepRaider.ProcessTitleInfo()
		);
   }
}
