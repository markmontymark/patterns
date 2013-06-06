package Behavioral.State;


//TestState.java - testing the State

class TestState {
   public static void main(String[] args) 
   {
       DvdStateContext stateContext = new DvdStateContext();
       stateContext.showName(
         "Sponge Bob Squarepants - "+
           "Nautical Nonsense and Sponge Buddies");
       stateContext.showName(
         "Jay and Silent Bob Strike Back");  
       stateContext.showName(
         "Buffy The Vampire Slayer Season 2");
       stateContext.showName(
         "The Sopranos Season 2");
   }
}      