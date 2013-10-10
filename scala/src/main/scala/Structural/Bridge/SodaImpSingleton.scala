package Structural.Bridge;


//SodaImpSingleton - a Singleton to hold the current SodaImp

class SodaImpSingleton {  
    private static SodaImp sodaImp;
   
    SodaImpSingleton(SodaImp sodaImpIn) {
        this.sodaImp = sodaImpIn;
    }
    
    static SodaImp getTheSodaImp() {
        return sodaImp;
    }
}