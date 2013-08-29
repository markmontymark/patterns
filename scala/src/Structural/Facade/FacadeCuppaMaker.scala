package Structural.Facade;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Facade Overview
//One class has a method that performs a complex process calling several other classes.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//FacadeCuppaMaker - the Facade

public class FacadeCuppaMaker {  
   boolean teaBagIsSteeped; 
    
   public FacadeCuppaMaker() {
       System.out.println(
         "FacadeCuppaMaker ready to make you a cuppa!");
   }
   
   public FacadeTeaCup makeACuppa() {
       FacadeTeaCup cup = new FacadeTeaCup();
       FacadeTeaBag teaBag = new FacadeTeaBag();
       FacadeWater water = new FacadeWater();
       cup.addFacadeTeaBag(teaBag);
       water.boilFacadeWater();
       cup.addFacadeWater(water);
       cup.steepTeaBag();
       return cup;
   }
}