package Creational::Singleton;

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