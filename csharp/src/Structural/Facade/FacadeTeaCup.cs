namespace Structural.Facade {


//FacadeTeaCup.java - one of three classes the facade calls

public class FacadeTeaCup {  
   bool teaBagIsSteeped; 
   FacadeWater facadeWater;
   FacadeTeaBag facadeTeaBag;
    
   public FacadeTeaCup() {
       setTeaBagIsSteeped(false);
   }    
   
   public void setTeaBagIsSteeped(bool isTeaBagSteeped) {
       teaBagIsSteeped = isTeaBagSteeped;
   }
   public bool getTeaBagIsSteeped() {
       return teaBagIsSteeped;
   }
    
   public void addFacadeTeaBag(FacadeTeaBag facadeTeaBagIn) {
       facadeTeaBag = facadeTeaBagIn;
   }
   
   public void addFacadeWater(FacadeWater facadeWaterIn) {
       facadeWater = facadeWaterIn;
   }   
   
   public void steepTeaBag() {
       if ( (facadeTeaBag != null) && 
             ( (facadeWater != null) && 
               (facadeWater.getWaterIsBoiling()) )
          ) {
          setTeaBagIsSteeped(true);
       } else {
          setTeaBagIsSteeped(false);
       }           
   }
   
   override public string ToString() {
       if (this.getTeaBagIsSteeped()) {
           return ("A nice cuppa tea!");
       } else {
           string tempString = "A cup with ";
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

}
