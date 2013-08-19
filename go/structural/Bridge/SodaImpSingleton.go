package bridge


//SodaImpSingleton - a Singleton to hold the current SodaImp

public class SodaImpSingleton {  
    private static SodaImp sodaImp
   
    public SodaImpSingleton(SodaImp sodaImpIn) {
        this.sodaImp = sodaImpIn
    }
    
    public static SodaImp getTheSodaImp() {
        return sodaImp
    }
}