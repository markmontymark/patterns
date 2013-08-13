//Mediator.java - testing the Mediator


namespace Behavioral.Mediator 
{

using tap;

class TestMediator {            
    
   public static void Main() 
	{
       DvdMediator dvdMediator = new DvdMediator();
       DvdLowercaseTitle dvdLower = new DvdLowercaseTitle("Mulholland Dr.", dvdMediator);
       DvdUpcaseTitle dvdUp = new DvdUpcaseTitle(dvdLower, dvdMediator);
      
		Tapper tap = new Tapper(); 
       tap.test("Lowercase LC title :" , dvdLower.getLowercaseTitle(),("bork"));
       tap.test("Lowercase super title :" , dvdLower.getTitle(),("bork"));
       tap.test("Upcase UC title :" , dvdUp.getUpcaseTitle(),("bork"));
       tap.test("Upcase super title :" , dvdUp.getTitle(),("bork"));
       
       dvdLower.setSuperTitleLowercase();
       
       tap.test("Lowercase LC title :" , dvdLower.getLowercaseTitle(),("bork"));
       tap.test("Lowercase super title :" , dvdLower.getTitle(),("bork"));
       tap.test("Upcase UC title :" , dvdUp.getUpcaseTitle(),("bork"));
       tap.test("Upcase super title :" , dvdUp.getTitle(),("bork"));
   }
}      


}
