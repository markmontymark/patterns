namespace Structural.Facade {


//FacadeWater.java - two of three classes the facade calls

public class FacadeWater {  
   bool waterIsBoiling; 
    
   public FacadeWater() {
       setWaterIsBoiling(false);
   }
   
   public void boilFacadeWater() {
       setWaterIsBoiling(true);
   }
   
   public void setWaterIsBoiling(bool isWaterBoiling) {
       waterIsBoiling = isWaterBoiling;
   }
   public bool getWaterIsBoiling() {
       return waterIsBoiling;
   }
}

}
