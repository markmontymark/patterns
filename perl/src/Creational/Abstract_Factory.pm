

package Creational::Abstract_Factory::BostonConcreteSoupFactory;



//BostonConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory

class BostonConcreteSoupFactory extends AbstractSoupFactory {
    public BostonConcreteSoupFactory() {
        factoryLocation = "Boston";
    }
    public ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}



package Creational::Abstract_Factory::Soup;


//Soup.java - A helper class

import java.util.ArrayList;
import java.util.ListIterator;

abstract class Soup 
{
   ArrayList soupIngredients = new ArrayList();    
   String soupName;
   
   public String getSoupName()
   {
       return soupName;
   }
   
   public String toString()
   {
        StringBuffer stringOfIngredients = new StringBuffer(soupName);
        stringOfIngredients.append(" Ingredients: ");
        ListIterator soupIterator = soupIngredients.listIterator();
        while (soupIterator.hasNext())
        {
            stringOfIngredients.append((String)soupIterator.next());
        }
        return stringOfIngredients.toString();
   }
}        



package Creational::Abstract_Factory::HonoluluConcreteSoupFactory;


//HonoluluConcreteSoupFactory.java - Two of Two concrete factories extending the abstract factory

class HonoluluConcreteSoupFactory extends AbstractSoupFactory {
    public HonoluluConcreteSoupFactory() {
        factoryLocation = "Honolulu";
    }
    public ClamChowder makeClamChowder() {
       return new HonoluluClamChowder();
    }
    public FishChowder makeFishChowder() {
       return new HonoluluFishChowder();
    }
}



package Creational::Abstract_Factory::HonoluluFishChowder;


class HonoluluFishChowder extends FishChowder {
    public HonoluluFishChowder() {
        soupName = "OpakapakaFishChowder";
        soupIngredients.clear();
        soupIngredients.add("1 Pound Fresh Opakapaka Fish");
        soupIngredients.add("1 cup pineapple chunks");
        soupIngredients.add("1/2 cup coconut milk");
        soupIngredients.add("1/4 cup SPAM");
        soupIngredients.add("1/4 cup taro chips");
    }
}



package Creational::Abstract_Factory::FishChowder;


class FishChowder extends Soup
{
    public FishChowder() 
    {
        soupName = "FishChowder";
        soupIngredients.add("1 Pound Fresh fish");
        soupIngredients.add("1 cup fruit or vegetables");    
        soupIngredients.add("1/2 cup milk");      
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup chips");          
    }
}



package Creational::Abstract_Factory::AbstractSoupFactory;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//An abstract factory has sets of methods to make families of various objects.

//In this example the AbstractSoupFactory defines the method names and return types to make various kinds of soup.

//The BostonConcreteSoupFactory and the HonoluluConcreteSoupFactory both extend the AbstractSoupFactory.

//An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//AbstractSoupFactory.java - An Abstract Factory

abstract class AbstractSoupFactory {
    String factoryLocation;
    public String getFactoryLocation() {
        return factoryLocation;
    }
    
    public ChickenSoup makeChickenSoup() {
        return new ChickenSoup();
    }
    public ClamChowder makeClamChowder() {
        return new ClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new FishChowder();
    }     
    public Minnestrone makeMinnestrone() {
        return new Minnestrone();
    }
    public PastaFazul makePastaFazul() {
        return new PastaFazul();
    }
    public TofuSoup makeTofuSoup() {
        return new TofuSoup();
    }
    public VegetableSoup makeVegetableSoup() {
        return new VegetableSoup();
    }
}



package Creational::Abstract_Factory::HonoluluClamChowder;


class HonoluluClamChowder extends ClamChowder {
    public HonoluluClamChowder() {
        soupName = "PacificClamChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Pacific Clams");
        soupIngredients.add("1 cup pineapple chunks");
        soupIngredients.add("1/2 cup coconut milk");
        soupIngredients.add("1/4 cup SPAM");
        soupIngredients.add("1/4 cup taro chips");
    }
}



package Creational::Abstract_Factory::PastaFazul;


class PastaFazul extends Soup
{
    public PastaFazul() 
    {
        soupName = "Pasta Fazul";
        soupIngredients.add("1 Pound tomatos");
        soupIngredients.add("1/2 cup pasta");    
        soupIngredients.add("1/2 cup diced carrots");          
        soupIngredients.add("1 cup tomato juice");             
    }
}



package Creational::Abstract_Factory::TofuSoup;


class TofuSoup extends Soup
{
    public TofuSoup() 
    {
        soupName = "Tofu Soup";
        soupIngredients.add("1 Pound tofu");
        soupIngredients.add("1 cup carrot juice");    
        soupIngredients.add("1/4 cup spirolena");         
    }
}



package Creational::Abstract_Factory::BostonFishChowder;


class BostonFishChowder extends FishChowder {
    public BostonFishChowder() {
        soupName = "ScrodFishChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Scrod");
        soupIngredients.add("1 cup corn");    
        soupIngredients.add("1/2 cup heavy cream");
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup potato chips");
    }
}



package Creational::Abstract_Factory::ClamChowder;


class ClamChowder extends Soup
{
    public ClamChowder() 
    {
        soupName = "ClamChowder";
        soupIngredients.add("1 Pound Fresh Clams");
        soupIngredients.add("1 cup fruit or vegetables");    
        soupIngredients.add("1/2 cup milk");      
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup chips");          
    }
}



package Creational::Abstract_Factory::TestAbstractSoupFactory;


//TestAbstractSoupFactory.java - Testing the abstract factory

import java.util.Calendar;

class TestAbstractSoupFactory { 
   public static Soup MakeSoupOfTheDay(AbstractSoupFactory 
                                       concreteSoupFactory)
   { 
       Calendar todayCalendar = Calendar.getInstance();
       //int dayOfWeek = todayCalendar.get(Calendar.DAY_OF_WEEK);
       
       int dayOfWeek = Calendar.TUESDAY;
       
       if (dayOfWeek == Calendar.MONDAY) {
           return concreteSoupFactory.makeChickenSoup();
       } else if (dayOfWeek == Calendar.TUESDAY) {
           return concreteSoupFactory.makeClamChowder();
       } else if (dayOfWeek == Calendar.WEDNESDAY) {
           return concreteSoupFactory.makeFishChowder();
       } else if (dayOfWeek == Calendar.THURSDAY) {
           return concreteSoupFactory.makeMinnestrone();
       } else if (dayOfWeek == Calendar.TUESDAY) {
           return concreteSoupFactory.makePastaFazul();
       } else if (dayOfWeek == Calendar.WEDNESDAY) {
           return concreteSoupFactory.makeTofuSoup();
       } else {
           return concreteSoupFactory.makeVegetableSoup();
       }
   }        

   public static void main(String[] args) 
   {
       AbstractSoupFactory concreteSoupFactory = 
         new BostonConcreteSoupFactory();
       Soup soupOfTheDay = 
         MakeSoupOfTheDay(concreteSoupFactory);
       System.out.println("The Soup of the day " + 
                          concreteSoupFactory.getFactoryLocation() + 
                          " is " + 
                          soupOfTheDay.getSoupName());
 
       concreteSoupFactory = 
         new HonoluluConcreteSoupFactory();
       soupOfTheDay = 
         MakeSoupOfTheDay(concreteSoupFactory);
       System.out.println("The Soup of the day " + 
                          concreteSoupFactory.getFactoryLocation() + 
                          " is " + 
                          soupOfTheDay.getSoupName());
   }
}      



package Creational::Abstract_Factory::VegetableSoup;


class VegetableSoup extends Soup
{
    public VegetableSoup() 
    {
        soupName = "Vegetable Soup";
        soupIngredients.add("1 cup bullion");    
        soupIngredients.add("1/4 cup carrots");         
        soupIngredients.add("1/4 cup potatoes");         
    }
}



package Creational::Abstract_Factory::ChickenSoup;


class ChickenSoup extends Soup
{
    public ChickenSoup() 
    {
        soupName = "ChickenSoup";
        soupIngredients.add("1 Pound diced chicken");
        soupIngredients.add("1/2 cup rice");    
        soupIngredients.add("1 cup bullion");      
        soupIngredients.add("1/16 cup butter");    
        soupIngredients.add("1/4 cup diced carrots");          
    }
}   



package Creational::Abstract_Factory::Minnestrone;


class Minnestrone extends Soup
{
    public Minnestrone() 
    {
        soupName = "Minestrone";
        soupIngredients.add("1 Pound tomatos");
        soupIngredients.add("1/2 cup pasta");    
        soupIngredients.add("1 cup tomato juice");             
    }
}



package Creational::Abstract_Factory::BostonClamChowder;


class BostonClamChowder extends ClamChowder {
    public BostonClamChowder() {
        soupName = "QuahogChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Quahogs");
        soupIngredients.add("1 cup corn");    
        soupIngredients.add("1/2 cup heavy cream");
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup potato chips");
    }
}

