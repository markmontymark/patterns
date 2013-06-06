// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Methods to make and return components of one object various ways.

In this example the SoupFactoryMethod defines the makeSoupBuffet method which returns a SoupBuffet object. The SoupFactoryMethod also defines the methods needed in creating the SoupBuffet.

The BostonSoupFactoryMethodSubclass and the HonoluluSoupFactoryMethodSubclass both extend the SoupFactoryMethod. An object can be defined as an SoupFactoryMethod, and instantiated as either a BostonSoupFactoryMethodSubclass (BSFMS) or a HonoluluSoupFactoryMethodSubclass (HSFMS).

Both BSFMS and HSFMS override SoupFactoryMethod's makeFishChowder method. The BSFMS returns a SoupBuffet with a FishChowder subclass of BostonFishChowder, while the HSFMS returns a SoupBuffet with a FishChowder subclass of HonoluluFishChowder.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
SoupFactoryMethod.java - a Factory Method

class SoupFactoryMethod {
    public SoupFactoryMethod() {}
        
    public SoupBuffet makeSoupBuffet() {
        return new SoupBuffet();
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

    public String makeBuffetName() {
        return "Soup Buffet";
    }
}

BostonSoupFactoryMethodSubclass.java - One of Two Subclass Factory Methods

class BostonSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public String makeBuffetName() {
        return "Boston Soup Buffet";
    }
    public ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}

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

HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods

class HonoluluSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public String makeBuffetName() {
        return "Honolulu Soup Buffet";
    }
    public ClamChowder makeClamChowder() {
        return new HonoluluClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new HonoluluFishChowder();
    }
}

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

Soup.java - A helper class

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

SoupBuffet.java - A helper class

class SoupBuffet {
   String soupBuffetName;
   
   ChickenSoup chickenSoup;
   ClamChowder clamChowder;
   FishChowder fishChowder;
   Minnestrone minnestrone;
   PastaFazul pastaFazul;
   TofuSoup tofuSoup;
   VegetableSoup vegetableSoup;

   public String getSoupBuffetName() {
       return soupBuffetName;
   }
   public void setSoupBuffetName(String soupBuffetNameIn) {
      soupBuffetName = soupBuffetNameIn;
   }
   
   public void setChickenSoup(ChickenSoup chickenSoupIn) {
       chickenSoup = chickenSoupIn;
   }
   public void setClamChowder(ClamChowder clamChowderIn) {
       clamChowder = clamChowderIn;
   }
   public void setFishChowder(FishChowder fishChowderIn) {
      fishChowder = fishChowderIn;
   }
   public void setMinnestrone(Minnestrone minnestroneIn) {
      minnestrone = minnestroneIn;
   }
   public void setPastaFazul(PastaFazul pastaFazulIn) {
       pastaFazul = pastaFazulIn;
   }
   public void setTofuSoup(TofuSoup tofuSoupIn) {
       tofuSoup = tofuSoupIn;
   }
   public void setVegetableSoup(VegetableSoup vegetableSoupIn) {
       vegetableSoup = vegetableSoupIn;
   }
   
   public String getTodaysSoups() {
        StringBuffer stringOfSoups = new StringBuffer();
        stringOfSoups.append(" Today's Soups!  ");
        stringOfSoups.append(" Chicken Soup: ");        
        stringOfSoups.append(this.chickenSoup.getSoupName()); 
        stringOfSoups.append(" Clam Chowder: ");        
        stringOfSoups.append(this.clamChowder.getSoupName()); 
        stringOfSoups.append(" Fish Chowder: ");        
        stringOfSoups.append(this.fishChowder.getSoupName()); 
        stringOfSoups.append(" Minnestrone: ");        
        stringOfSoups.append(this.minnestrone.getSoupName());
        stringOfSoups.append(" Pasta Fazul: ");        
        stringOfSoups.append(this.pastaFazul.getSoupName());
        stringOfSoups.append(" Tofu Soup: ");        
        stringOfSoups.append(this.tofuSoup.getSoupName());
        stringOfSoups.append(" Vegetable Soup: ");        
        stringOfSoups.append(this.vegetableSoup.getSoupName());
        return stringOfSoups.toString();          
   }
}        

TestSoupFactoryMethod.java - testing the factory method

class TestSoupFactoryMethod {         

   public static void main(String[] args) {
       
       SoupFactoryMethod soupFactoryMethod = 
         new SoupFactoryMethod();
       SoupBuffet soupBuffet = 
         soupFactoryMethod.makeSoupBuffet();
       soupBuffet.setSoupBuffetName(
         soupFactoryMethod.makeBuffetName());
       soupBuffet.setChickenSoup(
         soupFactoryMethod.makeChickenSoup());
       soupBuffet.setClamChowder(
         soupFactoryMethod.makeClamChowder()); 
       soupBuffet.setFishChowder(
         soupFactoryMethod.makeFishChowder());
       soupBuffet.setMinnestrone(
         soupFactoryMethod.makeMinnestrone());
       soupBuffet.setPastaFazul(
         soupFactoryMethod.makePastaFazul()); 
       soupBuffet.setTofuSoup(
         soupFactoryMethod.makeTofuSoup());
       soupBuffet.setVegetableSoup(
          soupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           soupBuffet.getSoupBuffetName() + 
                           soupBuffet.getTodaysSoups());
       
       
       SoupFactoryMethod bostonSoupFactoryMethod = 
         new BostonSoupFactoryMethodSubclass();
       SoupBuffet bostonSoupBuffet = 
         bostonSoupFactoryMethod.makeSoupBuffet();
       bostonSoupBuffet.setSoupBuffetName(
         bostonSoupFactoryMethod.makeBuffetName());
       bostonSoupBuffet.setChickenSoup(
         bostonSoupFactoryMethod.makeChickenSoup());
       bostonSoupBuffet.setClamChowder(
         bostonSoupFactoryMethod.makeClamChowder());
       bostonSoupBuffet.setFishChowder(
         bostonSoupFactoryMethod.makeFishChowder());
       bostonSoupBuffet.setMinnestrone(
         bostonSoupFactoryMethod.makeMinnestrone());
       bostonSoupBuffet.setPastaFazul(
         bostonSoupFactoryMethod.makePastaFazul());
       bostonSoupBuffet.setTofuSoup(
         bostonSoupFactoryMethod.makeTofuSoup());
       bostonSoupBuffet.setVegetableSoup(
         bostonSoupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           bostonSoupBuffet.getSoupBuffetName() + 
                           bostonSoupBuffet.getTodaysSoups());
       
       SoupFactoryMethod honoluluSoupFactoryMethod = 
         new HonoluluSoupFactoryMethodSubclass();
       SoupBuffet honoluluSoupBuffet = 
         honoluluSoupFactoryMethod.makeSoupBuffet();
       honoluluSoupBuffet.setSoupBuffetName(
         honoluluSoupFactoryMethod.makeBuffetName());
       honoluluSoupBuffet.setChickenSoup(
         honoluluSoupFactoryMethod.makeChickenSoup());
       honoluluSoupBuffet.setClamChowder(
         honoluluSoupFactoryMethod.makeClamChowder()); 
       honoluluSoupBuffet.setFishChowder(
         honoluluSoupFactoryMethod.makeFishChowder());
       honoluluSoupBuffet.setMinnestrone(
         honoluluSoupFactoryMethod.makeMinnestrone());
       honoluluSoupBuffet.setPastaFazul(
         honoluluSoupFactoryMethod.makePastaFazul()); 
       honoluluSoupBuffet.setTofuSoup(
         honoluluSoupFactoryMethod.makeTofuSoup());
       honoluluSoupBuffet.setVegetableSoup(
         honoluluSoupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups());
     }
}      

Test Results

At the  Soup Buffet Today's Soups!


Chicken Soup: ChickenSoup 


Clam Chowder: ClamChowder 


Fish Chowder: FishChowder 


Minnestrone: Minestrone 


Pasta fazul: Pasta fazul 


Tofu Soup: Tofu Soup

Vegetable Soup: Vegetable Soup


At the  Boston Soup Buffet Today's Soups!

Chicken Soup: ChickenSoup

Clam Chowder: QuahogChowder


Fish Chowder: ScrodFishChowder


Minnestrone: Minestrone


Pasta fazul: Pasta fazul


Tofu Soup: Tofu Soup


Vegetable Soup: Vegetable Soup


At the  Honolulu Soup Buffet Today's Soups!


Chicken Soup: ChickenSoup

Clam Chowder: PacificClamChowder 

Fish Chowder: OpakapakaFishChowder

Minnestrone: Minestrone

Pasta fazul: Pasta fazul

Tofu Soup: Tofu Soup

Vegetable Soup: Vegetable Soup

