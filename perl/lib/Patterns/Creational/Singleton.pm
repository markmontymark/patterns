

package Creational::Singleton::SingleSpoon;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Singleton
//Singleton Overview
//A class distributes the only instance of itself.

//In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon;". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = true;" The first time SingleSpoon.getTheSpoon() is called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it is returned with SingleSpoon.returnTheSpoon().

//If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.

//Please also note that this example is not thread safe. I think that to make it thread safe all you would need is to make the getTheSpoon() method synchronized. Many thanks to Brian K. for pointing this out.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//SingleSpoon.java - a Singleton

public class SingleSpoon 
{  
   private Soup soupLastUsedWith;
   
   private static SingleSpoon theSpoon;
   private static boolean theSpoonIsAvailable = true;
   
   private SingleSpoon() {}
     
   public static SingleSpoon getTheSpoon() {
       if (theSpoonIsAvailable) {
           if (theSpoon == null) {
               theSpoon = new SingleSpoon();
           }
           theSpoonIsAvailable = false;
           return theSpoon;
       } else {
           return null;
           //spoon not available, 
           //  could throw error or return null (as shown)
       }
   }
    
   public String toString() {
       return "Behold the glorious single spoon!";
   }
    
   public static void returnTheSpoon() {
       theSpoon.cleanSpoon();
       theSpoonIsAvailable = true;
   }     
   
   public Soup getSoupLastUsedWith() {
       return this.soupLastUsedWith;
   }
   public void setSoupLastUsedWith(Soup soup) {
       this.soupLastUsedWith = soup;
   }

   public void cleanSpoon() {
       this.setSoupLastUsedWith(null);
   }   
}



package Creational::Singleton::Soup;



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



package Creational::Singleton::TofuSoup;


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



package Creational::Singleton::FishChowder;


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



package Creational::Singleton::ClamChowder;


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



package Creational::Singleton::TestSingleSpoon;


//TestSingleSpoon.java - testing the singleton

class TestSingleSpoon {
    
   public static void main(String[] args) {
       System.out.println("First person getting the spoon");
       SingleSpoon spoonForFirstPerson = 
         SingleSpoon.getTheSpoon();
       if (spoonForFirstPerson != null)
           System.out.println(spoonForFirstPerson);
       else
           System.out.println("No spoon was available");
       
       System.out.println("");
       
       System.out.println("Second person getting a spoon");
       SingleSpoon spoonForSecondPerson = SingleSpoon.getTheSpoon();
       if (spoonForSecondPerson != null)
           System.out.println(spoonForSecondPerson);
       else
           System.out.println("No spoon was available");
       
       System.out.println("");
       
       System.out.println("First person returning the spoon");
       spoonForFirstPerson.returnTheSpoon();       
       spoonForFirstPerson = null;
       System.out.println("The spoon was returned");
       
       System.out.println("");
       
       System.out.println("Second person getting a spoon");
       spoonForSecondPerson = SingleSpoon.getTheSpoon();
       if (spoonForSecondPerson != null)
           System.out.println(spoonForSecondPerson);
       else
           System.out.println("No spoon was available");
   }
}      



package Creational::Singleton::VegetableSoup;


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



package Creational::Singleton::ChickenSoup;


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



package Creational::Singleton::Minnestrone;


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



package Creational::Singleton::PastaFazul;


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

