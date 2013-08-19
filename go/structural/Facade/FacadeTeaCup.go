package facade


//FacadeTeaCup - one of three classes the facade calls

public class FacadeTeaCup {  
   boolean teaBagIsSteeped 
   FacadeWater facadeWater
   FacadeTeaBag facadeTeaBag
    
   public FacadeTeaCup() {
       setTeaBagIsSteeped(false)
       System.out.println("behold the beautiful new tea cup")
   }    
   
   public void setTeaBagIsSteeped(boolean isTeaBagSteeped) {
       teaBagIsSteeped = isTeaBagSteeped
   }
   public boolean getTeaBagIsSteeped() {
       return teaBagIsSteeped
   }
    
   public void addFacadeTeaBag(FacadeTeaBag facadeTeaBagIn) {
       facadeTeaBag = facadeTeaBagIn
       System.out.println("the tea bag is in the tea cup")
   }
   
   public void addFacadeWater(FacadeWater facadeWaterIn) {
       facadeWater = facadeWaterIn
       System.out.println("the water is in the tea cup")  
   }   
   
   public void steepTeaBag() {
       if ( (facadeTeaBag != null) && 
             ( (facadeWater != null) && 
               (facadeWater.getWaterIsBoiling()) )
          ) {
          System.out.println("the tea is steeping in the cup")
          setTeaBagIsSteeped(true)
       } else {
          System.out.println("the tea is not steeping in the cup")
          setTeaBagIsSteeped(false)
       }           
   }
   
   public string tostring() {
       if (this.getTeaBagIsSteeped()) {
           return ("A nice cuppa tea!")
       } else {
           string tempstring = new string("A cup with ")
           if (facadeWater != null) {
                if (facadeWater.getWaterIsBoiling()) {
                    tempstring = (tempstring + "boiling water ")
                } else {
                    tempstring = (tempstring + "cold water ")
                }
           } else {
                tempstring = (tempstring + "no water ")
           }
 
           if (facadeTeaBag != null) {
                tempstring = (tempstring + "and a tea bag")
           } else {
                tempstring = (tempstring + "and no tea bag")
           } 
           return tempstring
       }
                        
   }
}