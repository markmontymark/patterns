// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Facade Overview
One class has a method that performs a complex process calling several other classes.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
FacadeCuppaMaker - the Facade

class FacadeCuppaMaker {  
   boolean teaBagIsSteeped; 
    
   FacadeCuppaMaker() {
       System.out.println(
         "FacadeCuppaMaker ready to make you a cuppa!");
   }
   
   FacadeTeaCup makeACuppa() {
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

FacadeTeaCup - one of three classes the facade calls

class FacadeTeaCup {  
   boolean teaBagIsSteeped; 
   FacadeWater facadeWater;
   FacadeTeaBag facadeTeaBag;
    
   FacadeTeaCup() {
       setTeaBagIsSteeped(false);
       System.out.println("behold the beautiful new tea cup");
   }    
   
   void setTeaBagIsSteeped(boolean isTeaBagSteeped) {
       teaBagIsSteeped = isTeaBagSteeped;
   }
   boolean getTeaBagIsSteeped() {
       return teaBagIsSteeped;
   }
    
   void addFacadeTeaBag(FacadeTeaBag facadeTeaBagIn) {
       facadeTeaBag = facadeTeaBagIn;
       System.out.println("the tea bag is in the tea cup");
   }
   
   void addFacadeWater(FacadeWater facadeWaterIn) {
       facadeWater = facadeWaterIn;
       System.out.println("the water is in the tea cup");  
   }   
   
   void steepTeaBag() {
       if ( (facadeTeaBag != null) && 
             ( (facadeWater != null) && 
               (facadeWater.getWaterIsBoiling()) )
          ) {
          System.out.println("the tea is steeping in the cup");
          setTeaBagIsSteeped(true);
       } else {
          System.out.println("the tea is not steeping in the cup");
          setTeaBagIsSteeped(false);
       }           
   }
   
   String toString() {
       if (this.getTeaBagIsSteeped()) {
           return ("A nice cuppa tea!");
       } else {
           String tempString = new String("A cup with ");
           if (facadeWater != null) {
                if (facadeWater.getWaterIsBoiling()) {
                    tempString = (tempString + "boiling water ");
                } else {
                    tempString = (tempString + "cold water ");
                }
           } else {
                tempString = (tempString + "no water ");
           }
 
           if (facadeTeaBag != null) {
                tempString = (tempString + "and a tea bag");
           } else {
                tempString = (tempString + "and no tea bag");
           } 
           return tempString;
       }
                        
   }
}

FacadeWater - two of three classes the facade calls

class FacadeWater {  
   boolean waterIsBoiling; 
    
   FacadeWater() {
       setWaterIsBoiling(false);
       System.out.println("behold the wonderous water");       
   }
   
   void boilFacadeWater() {
       setWaterIsBoiling(true);
       System.out.println("water is boiling");
   }
   
   void setWaterIsBoiling(boolean isWaterBoiling) {
       waterIsBoiling = isWaterBoiling;
   }
   boolean getWaterIsBoiling() {
       return waterIsBoiling;
   }
}

FacadeTeaBag - three of three classes the facade calls

class FacadeTeaBag {  
   FacadeTeaBag() {
       System.out.println("behold the lovely tea bag");
   }
}

TestFacade - testing the Facade

class TestFacade {
   static void main(String[] args) {
       FacadeCuppaMaker cuppaMaker = new FacadeCuppaMaker();
       FacadeTeaCup teaCup = cuppaMaker.makeACuppa();
       System.out.println(teaCup);
   }
}

Test Results

FacadeCuppaMaker ready to make you a cuppa!
behold the beautiful new tea cup
behold the lovely tea bag
behold the wonderous water
the tea bag is in the tea cup
water is boiling
the water is in the tea cup
the tea is steeping in the cup
A nice cuppa tea!


