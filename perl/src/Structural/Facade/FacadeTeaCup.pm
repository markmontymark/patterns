package Structural::Facade;


//FacadeTeaCup.java - one of three classes the facade calls

public class FacadeTeaCup {  
   boolean teaBagIsSteeped; 
   FacadeWater facadeWater;
   FacadeTeaBag facadeTeaBag;
    
   public FacadeTeaCup() {
       setTeaBagIsSteeped(false);
       System.out.println("behold the beautiful new tea cup");
   }    
   
   public void setTeaBagIsSteeped(boolean isTeaBagSteeped) {
       teaBagIsSteeped = isTeaBagSteeped;
   }
   public boolean getTeaBagIsSteeped() {
       return teaBagIsSteeped;
   }
    
   public void addFacadeTeaBag(FacadeTeaBag facadeTeaBagIn) {
       facadeTeaBag = facadeTeaBagIn;
       System.out.println("the tea bag is in the tea cup");
   }
   
   public void addFacadeWater(FacadeWater facadeWaterIn) {
       facadeWater = facadeWaterIn;
       System.out.println("the water is in the tea cup");  
   }   
   
   public void steepTeaBag() {
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
   
   public String toString() {
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