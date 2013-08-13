namespace Creational.Prototype {


//AbstractFork.java - Two of Two Prototypes

public class Fork 
{  
   protected string forkName; 

	protected Fork(){}
	

	public Fork(Fork from)
	{
		forkName = from.forkName;
	}
    
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
