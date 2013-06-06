package Creational.Prototype;


//AbstractSpoon.java - One of Two Prototypes

public abstract class AbstractSpoon implements Cloneable {  
   String spoonName; 
    
   public void setSpoonName(String spoonName) {
       this.spoonName = spoonName;
   }
   public String getSpoonName() {
       return this.spoonName;
   }
   
   public Object clone() {
       Object object = null;
       try {
           object = super.clone();
       } catch (CloneNotSupportedException exception) {
           System.err.println("AbstractSpoon is not Cloneable");
       }
       return object;
   }
}