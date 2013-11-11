package test.ImmutableObject;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import common.*;
import ImmutableObject.*;

public class Builder {

   public String CreateTestOutput( SoupBuffetBuilder sbb ) { 
		ImmutableObject.SoupBuffet sb = sbb.buildSoupBuffet();
		return sb.getSoupBuffetName() + sb.getTodaysSoups();
   }     
   
	@Test 
   public void thetester() {
       
       org.junit.Assert.assertEquals("Boston soup buffet builder test",
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + CreateTestOutput( new BostonSoupBuffetBuilder())
			);

       org.junit.Assert.assertEquals("Honolulu soup buffet builder test",
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + CreateTestOutput( new HonoluluSoupBuffetBuilder() )
		);
   }
}      
