package Behavioral.Strategy;


//DvdNameTheAtEndStrategy - two of three concrete strategies

public class DvdNameTheAtEndStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       if (dvdName.startsWith("The ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", The");
       }
       if (dvdName.startsWith("THE ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", THE");
       }       
       if (dvdName.startsWith("the ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", the");
       }         
       return dvdName;
   }
}