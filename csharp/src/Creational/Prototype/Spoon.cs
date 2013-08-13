namespace Creational.Prototype {


//AbstractSpoon.java - One of Two Prototypes

public class Spoon {

   protected string spoonName; 

	protected Spoon() {}

	public Spoon(Spoon from)
	{
		spoonName = from.getSpoonName();
	}    

   public void setSpoonName(string spoonName) {
       this.spoonName = spoonName;
   }
   public string getSpoonName() {
       return this.spoonName;
   }
   
}

}
