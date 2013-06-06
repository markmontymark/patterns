package Behavioral::Strategy;


//DvdNameAllCapStrategy.java - one of three concrete strategies

public class DvdNameAllCapStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       return dvdName.toUpperCase();
   }
}