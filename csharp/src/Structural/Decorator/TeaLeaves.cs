namespace Structural.Decorator {


//TeaLeaves.java - the decoratee

public class TeaLeaves : Tea {  
   public TeaLeaves() {
       teaIsSteeped = false;
   }
   
   override public string steepTea() {
       teaIsSteeped = true;
       return "tea leaves are steeping";
   }
}

}
