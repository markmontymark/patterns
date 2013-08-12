//TestAbstractSoupFactory.java - Testing the abstract factory


package test.Creational;

import tap.*;
import common.*;
import Creational.Abstract_Factory.*;
import java.util.Calendar;

class TestAbstractSoupFactory { 
   public static Soup MakeSoupOfTheDay(AbstractSoupFactory 
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
				s = concreteSoupFactory.makeVegetableSoup();
				break;
       }
		return s;
   }        

   public static void main(String[] args) 
   {
		AbstractSoupFactory concreteSoupFactory = new BostonConcreteSoupFactory();
		Soup soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		Tapper tap = new Tapper();
		tap.test("The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName());

		concreteSoupFactory = new HonoluluConcreteSoupFactory();
		soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		tap.test("The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName());
		tap.done();
   }
}  
