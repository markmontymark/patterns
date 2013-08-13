namespace Creational.Prototype {


//AbstractFork.java - Two of Two Prototypes

public abstract class AbstractFork 
{  
   protected string forkName; 
    
   public void setForkName(string forkName) {
       this.forkName = forkName;
   }
   public string getForkName() {
       return this.forkName;
   }
   
   public object clone() 
   {
       object obj = null;
       obj = this.clone();
       return obj;
   }   
}

}
