package Structural.Adapter;


//LooseLeafTea - the adaptee

class LooseLeafTea {  
   boolean teaIsSteeped; 
    
   LooseLeafTea() {
       teaIsSteeped = false;
   }
   
   void steepTea() {
       teaIsSteeped = true;
       System.out.println("tea is steeping");
   }
}
