package prototype


//AbstractSpoon - One of Two Prototypes

public abstract class AbstractSpoon implements Cloneable {  
   string spoonName 
    
   public void setSpoonName(string spoonName) {
       this.spoonName = spoonName
   }
   public string getSpoonName() {
       return this.spoonName
   }
   
   public Object clone() {
       Object object = null
       try {
           object = super.clone()
       } catch (CloneNotSupportedException exception) {
           System.err.println("AbstractSpoon is not Cloneable")
       }
       return object
   }
}