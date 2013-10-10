package Structural.Decorator;


//TeaLeaves - the decoratee

class TeaLeaves extends Tea {  
   TeaLeaves() {
       teaIsSteeped = false;
   }
   
   String steepTea() {
       teaIsSteeped = true;
       return ("tea leaves are steeping");
   }
}
