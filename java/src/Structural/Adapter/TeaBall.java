package Structural.Adapter;


//TeaBall.java - the adapter

public class TeaBall extends TeaBag {  
   public LooseLeafTea looseLeafTea;
   
   public TeaBall(LooseLeafTea looseLeafTeaIn) {
       looseLeafTea = looseLeafTeaIn;
       teaBagIsSteeped = looseLeafTea.teaIsSteeped;
   }
    
   public void steepTeaInCup() {
       looseLeafTea.steepTea();
       teaBagIsSteeped = true;
   }
}
