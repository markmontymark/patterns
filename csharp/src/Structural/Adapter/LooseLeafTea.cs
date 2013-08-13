//LooseLeafTea.java - the adaptee

namespace Structural.Adapter {


public class LooseLeafTea {  
   public bool teaIsSteeped; 
    
   public LooseLeafTea() {
       teaIsSteeped = false;
   }
   
   public void steepTea() {
       teaIsSteeped = true;
   }
}

}
