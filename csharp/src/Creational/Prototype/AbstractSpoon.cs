namespace Creational.Prototype {


//AbstractSpoon.java - One of Two Prototypes

public abstract class AbstractSpoon {
   protected string spoonName; 
    
   public void setSpoonName(string spoonName) {
       this.spoonName = spoonName;
   }
   public string getSpoonName() {
       return this.spoonName;
   }
   
   public object clone() {
       object obj = null;
       obj = this.clone();
       return obj;
   }
}

}
