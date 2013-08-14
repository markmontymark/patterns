//TestAbstractSoupFactory.java - Testing the abstract factory


package test.Creational;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import common.*;
import Creational.Abstract_Factory.*;
import java.util.Calendar;

class TestAbstractSoupFactory { 
   public Soup MakeSoupOfTheDay(AbstractSoupFactory 
                                       concreteSoupFactory)
   { 
       Calendar todayCalendar = Calendar.getInstance();
       //int dayOfWeek = todayCalendar.get(Calendar.DAY_OF_WEEK);
		Soup s ;
       
		int dayOfWeek = Calendar.TUESDAY;
      
		switch( dayOfWeek )
		{
			case  Calendar.MONDAY:
				s = concreteSoupFactory.makeChickenSoup();
				break;
			case Calendar.TUESDAY:
				s = concreteSoupFactory.makeClamChowder();
				break;
			case Calendar.WEDNESDAY :
				s = concreteSoupFactory.makeFishChowder();
				break;
			case Calendar.THURSDAY :
				s = concreteSoupFactory.makeMinnestrone();
				break;
			case Calendar.FRIDAY :
				s = concreteSoupFactory.makePastaFazul();
				break;
			case Calendar.SATURDAY :
				s = concreteSoupFactory.makeTofuSoup();
				break;
			case Calendar.SUNDAY :
			default:
				s = concreteSoupFactory.makeVegetableSoup();
				break;
       }
		return s;
   }        

	@Test
   public void thetester() 
   {
		AbstractSoupFactory concreteSoupFactory = new BostonConcreteSoupFactory();
		Soup soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		
		org.junit.Assert.assertEquals("Boston Abstract Factory test",
			"The Soup of the day Bostn is ",
			"The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName());

		concreteSoupFactory = new HonoluluConcreteSoupFactory();
		soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		org.junit.Assert.assertEquals("Honolulu Abstract Factory test",
			"The Soup of the day ",
			"The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName());
   }
}  
