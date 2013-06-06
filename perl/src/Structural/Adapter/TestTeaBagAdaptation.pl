package Structural::Adapter;


//TestTeaBagAdaptation.java - testing the adapter

class TestTeaBagAdaptation {

   public static void main(String[] args) {
       TeaCup teaCup = new TeaCup();

       System.out.println("Steeping tea bag");
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);

       System.out.println("Steeping loose leaf tea");
       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
   }
}      