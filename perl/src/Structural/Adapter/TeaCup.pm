package Structural::Adapter;


//TeaCup.java - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

public class TeaCup {  
   public void steepTeaBag(TeaBag teaBag) {
       teaBag.steepTeaInCup();
   }
}