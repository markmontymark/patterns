package Structural.Facade;


//FacadeWater.java - two of three classes the facade calls

public class FacadeWater {  
   boolean waterIsBoiling; 
    
   public FacadeWater() {
       setWaterIsBoiling(false);
       System.out.println("behold the wonderous water");       
   }
   
   public void boilFacadeWater() {
       setWaterIsBoiling(true);
       System.out.println("water is boiling");
   }
   
   public void setWaterIsBoiling(boolean isWaterBoiling) {
       waterIsBoiling = isWaterBoiling;
   }
   public boolean getWaterIsBoiling() {
       return waterIsBoiling;
   }
}