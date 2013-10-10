package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;


import Behavioral.Chain_Of_Responsibility.*;

/**
 * Tests for {@link Foo}.
 *
 * @author user@example.com (John Doe)
 */
@RunWith(JUnit4.class)
public class ChainOfResponsibility {

	@Test
	public void testaway() 
	{
		String topTitle;
		DvdCategory comedy = new DvdCategory("Comedy");
		comedy.setTopCategoryTitle("Ghost World");

		DvdSubCategory comedyChildrens = new DvdSubCategory(comedy, "Childrens");

		DvdSubSubCategory comedyChildrensAquatic = new DvdSubSubCategory(comedyChildrens, "Aquatic");
		comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants");

		topTitle = comedy.getTopTitle();
		org.junit.Assert.assertEquals("DvdCategory Test", 
			"The top title for Comedy is Ghost World",
			("The top title for " + comedy.getAllCategories() + " is " + topTitle)
		);

		String topTitle2 = comedyChildrens.getTopTitle();
		org.junit.Assert.assertEquals( "DvdSubCategory Test", 
			"The top title for Comedy/Childrens is Ghost World",
			("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle2)
		);


		String topTitle3 = comedyChildrensAquatic.getTopTitle();
		org.junit.Assert.assertEquals( "DvdSubSubCategory Test", 
			"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants",
			("The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle3)
		);
   }
}
