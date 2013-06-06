package Structural::Flyweight;


//TeaFlavorFactory.java - the Factory

public class TeaFlavorFactory {  
   TeaFlavor[] flavors = new TeaFlavor[10];
     //no more than 10 flavors can be made
   int teasMade = 0;
   
   public TeaFlavor getTeaFlavor(String flavorToGet) {
       if (teasMade > 0) {
           for (int i = 0; i < teasMade; i++) {
               if (flavorToGet.equals((flavors[i]).getFlavor())) {
                   return flavors[i];
               }
           }
       }
       flavors[teasMade] = new TeaFlavor(flavorToGet);
       return flavors[teasMade++];
   }
   
   public int getTotalTeaFlavorsMade() {return teasMade;}
}