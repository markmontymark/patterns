//TestAbstractSoupFactory.java - Testing the abstract factory


namespace Creational.Abstract_Factory {

using tap;
using common;

class TestAbstractFactory { 
   public static Soup MakeSoupOfTheDay(AbstractSoupFactory 
                                       concreteSoupFactory)
   { 
		Soup s ;
/*
       Calendar todayCalendar = Calendar.getInstance();
       //int dayOfWeek = todayCalendar.get(Calendar.DAY_OF_WEEK);
       
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
*/
				s = concreteSoupFactory.makeTofuSoup();
/*
				break;
			case Calendar.SUNDAY :
				s = concreteSoupFactory.makeVegetableSoup();
				break;
       }
*/
		return s;
   }        

   public static void Main()
   {
		AbstractSoupFactory concreteSoupFactory = new BostonConcreteSoupFactory();
		Soup soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		Tapper tap = new Tapper();
		tap.test("Boston soup of the day test " , ("The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName() )  , ("The Soup of the day Boston is Tofu Soup"));

		concreteSoupFactory = new HonoluluConcreteSoupFactory();
		soupOfTheDay = MakeSoupOfTheDay(concreteSoupFactory);
		tap.test("Honolulu soup of the day test " , ("The Soup of the day " + concreteSoupFactory.getFactoryLocation() + " is " + soupOfTheDay.getSoupName() )  , ("The Soup of the day Honolulu is Tofu Soup"));
		tap.done();
   }
}

}  
