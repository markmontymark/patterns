namespace Structural.Bridge {


//SodaImpSingleton.java - a Singleton to hold the current SodaImp

public class SodaImpSingleton {  
	
   private SodaImp sodaImp;
	public static SodaImpSingleton instance = new SodaImpSingleton();
   
    private SodaImpSingleton() { }
    
    public static SodaImp getSodaImp() {
        return instance.sodaImp;
    }
    public static void setSodaImp(SodaImp si) {
		instance.sodaImp = si;
	}
}

}
