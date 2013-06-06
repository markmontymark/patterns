package Structural::Bridge;


//MediumSoda.java - one of two classes extending the Abstract

public class MediumSoda extends Soda {  
   public MediumSoda() {
       setSodaImp();
   }
   
   public void pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
       for (int i = 0; i < 2; i++) {
           System.out.print("...glug...");
           sodaImp.pourSodaImp();
       }
       System.out.println(" ");
   }
}