package decorator


//TeaLeaves - the decoratee

public class TeaLeaves extends Tea {  
   public TeaLeaves() {
       teaIsSteeped = false
   }
   
   public string steepTea() {
       teaIsSteeped = true
       return ("tea leaves are steeping")
   }
}
