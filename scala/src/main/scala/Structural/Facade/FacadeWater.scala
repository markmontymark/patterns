package Structural.Facade;


//FacadeWater - two of three classes the facade calls

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