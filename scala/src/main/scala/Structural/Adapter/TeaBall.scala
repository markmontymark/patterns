package Structural.Adapter;


//TeaBall - the adapter

class TeaBall extends TeaBag {  
   LooseLeafTea looseLeafTea;
   
   TeaBall(LooseLeafTea looseLeafTeaIn) {
       looseLeafTea = looseLeafTeaIn;
       teaBagIsSteeped = looseLeafTea.teaIsSteeped;
   }
    
   void steepTeaInCup() {
       looseLeafTea.steepTea();
       teaBagIsSteeped = true;
   }
}
