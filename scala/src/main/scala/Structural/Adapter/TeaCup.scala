package Structural.Adapter;


//TeaCup - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

class TeaCup {  
   void steepTeaBag(TeaBag teaBag) {
       teaBag.steepTeaInCup();
   }
}