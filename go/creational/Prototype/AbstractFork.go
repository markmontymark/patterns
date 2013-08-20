package prototype


//AbstractFork - Two of Two Prototypes

public abstract class AbstractFork implements Cloneable
{  
   string forkName 
    
   public void setForkName(string forkName) {
       this.forkName = forkName
   }
   public string getForkName() {
       return this.forkName
   }
   
   public Object clone() 
   {
       Object object = null
       try {
           object = super.clone()
       } catch (CloneNotSupportedException exception) {
           System.err.println("AbstractFork is not Cloneable")
       }
       return object
   }   
}