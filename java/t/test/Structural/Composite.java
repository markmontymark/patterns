//TestTeaBagsComposite.java - testing the composite

package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Composite.*;



public class Composite 
{
	@Test
   public void main() 
	{
		
		TeaBags tinOfTeaBags = new TinOfTeaBags("tin of tea bags");

		TeaBags teaBag1 = new OneTeaBag("tea bag 1");
		TeaBags teaBag2 = new OneTeaBag("tea bag 2");

		org.junit.Assert.assertEquals("OneTeaBag count",
			"The teaBag2 has 1 tea bags in it.",
			"The teaBag2 has " + teaBag2.countTeaBags() + " tea bags in it."); 

		org.junit.Assert.assertEquals( "Putting teaBag1 in tinOfTeaBags", 
			true,
			tinOfTeaBags.add(teaBag1)
		);
		org.junit.Assert.assertEquals( "Putting teaBag2 in tinOfTeaBags", 
			true,
			tinOfTeaBags.add(teaBag2)
		);

		org.junit.Assert.assertEquals("TinOfTeaBags count after teabag1 and teabag2 adds", 
			("The tinOfTeaBags now has 2 tea bags in it."),
			("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.")
		);


		TeaBags smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags");
		org.junit.Assert.assertEquals(
			"The smallTinOfTeaBags has 0 tea bags in it.",
			("The smallTinOfTeaBags has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.")
		);

		TeaBags teaBag3 = new OneTeaBag("tea bag 3");
		org.junit.Assert.assertEquals("Putting teaBag3 in smallTinOfTeaBags", 
			true,
			smallTinOfTeaBags.add(teaBag3)
		);
		org.junit.Assert.assertEquals("Small tin count",
			"The smallTinOfTeaBags now has 1 tea bags in it.",
			"The smallTinOfTeaBags now has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.");

		org.junit.Assert.assertEquals(
			true,
			tinOfTeaBags.add(smallTinOfTeaBags)
		);

		org.junit.Assert.assertEquals( "TinOfTeaBags count before removal ", 
			"The tinOfTeaBags now has 3 tea bags in it.",
			"The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it."
		);

		org.junit.Assert.assertEquals("Removing teaBag2 from tinOfTeaBags", 
			true,
			tinOfTeaBags.remove(teaBag2)
		);

		org.junit.Assert.assertEquals("TinOfTeaBags count after removal.", 
			"The tinOfTeaBags now has 2 tea bags in it.",
			"The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it."
		);
   }
}  
