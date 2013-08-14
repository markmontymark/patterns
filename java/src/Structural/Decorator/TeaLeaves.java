package Structural.Decorator;


//TeaLeaves.java - the decoratee

public class TeaLeaves extends Tea {  
   public TeaLeaves() {
       teaIsSteeped = false;
   }
   
   public String steepTea() {
       teaIsSteeped = true;
       return ("tea leaves are steeping");
   }
}
