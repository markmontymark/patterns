package Behavioral.Strategy;


//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies

public class DvdNameReplaceSpacesStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       return dvdName.replace(' ', charIn);
   }
}