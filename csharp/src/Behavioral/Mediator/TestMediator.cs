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
       tap.test("Lowercase LC title :" , dvdLower.getLowercaseTitle().ToString(),"mulholland dr.".ToString());
       tap.test("Lowercase super title :" , dvdLower.getTitle().ToString(),"Mulholland Dr.".ToString());
       tap.test("Upcase UC title :" , dvdUp.getUpcaseTitle().ToString(),"MULHOLLAND DR.".ToString());
       tap.test("Upcase super title :" , dvdUp.getTitle().ToString(),"Mulholland Dr.".ToString());
       
       dvdLower.setSuperTitleLowercase();
       
       tap.test("Lowercase LC title :" , dvdLower.getLowercaseTitle(),"mulholland dr.");
       tap.test("Lowercase super title :" , dvdLower.getTitle(),"mulholland dr.");
       tap.test("Upcase UC title :" , dvdUp.getUpcaseTitle(),"MULHOLLAND DR.");
       tap.test("Upcase super title :" , dvdUp.getTitle(),"mulholland dr.");
		tap.done();
   }
}      


}
