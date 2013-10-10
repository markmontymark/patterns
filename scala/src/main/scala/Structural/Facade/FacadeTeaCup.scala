package Structural.Facade;


//FacadeTeaCup - one of three classes the facade calls

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