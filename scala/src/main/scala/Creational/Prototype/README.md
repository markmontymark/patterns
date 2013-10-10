// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Java Design Patterns Prototype
Prototype Overview
Make new objects by cloning the objects which you set as prototypes
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
PrototypeFactory - a Factory for Prototypes

public class PrototypeFactory {  
    AbstractSpoon prototypeSpoon;
    AbstractFork prototypeFork;
    
    public PrototypeFactory(AbstractSpoon spoon, AbstractFork fork) {
       prototypeSpoon = spoon;
       prototypeFork = fork;
   }
    
   public AbstractSpoon makeSpoon() {
       return (AbstractSpoon)prototypeSpoon.clone();
   }
   public AbstractFork makeFork() {
       return (AbstractFork)prototypeFork.clone();
   }
}

AbstractSpoon - One of Two Prototypes

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

AbstractFork - Two of Two Prototypes

public abstract class AbstractFork implements Cloneable
{  
   String forkName; 
    
   public void setForkName(String forkName) {
       this.forkName = forkName;
   }
   public String getForkName() {
       return this.forkName;
   }
   
   public Object clone() 
   {
       Object object = null;
       try {
           object = super.clone();
       } catch (CloneNotSupportedException exception) {
           System.err.println("AbstractFork is not Cloneable");
       }
       return object;
   }   
}

SoupSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype

public class SoupSpoon extends AbstractSpoon {  
   public SoupSpoon() {
       setSpoonName("Soup Spoon");
   }
}

SaladSpoon - Two of Two Concrete Prototypes extending the AbstractSpoon Prototype

public class SaladSpoon extends AbstractSpoon {  
   public SaladSpoon() {
       setSpoonName("Salad Spoon");     
   }
}

SaladFork - The Concrete Prototype extending the AbstractFork Prototype

public class SaladFork extends AbstractFork {  
   public SaladFork() {
       setForkName("Salad Fork");
   }
}

TestPrototype - testing the Prototype

class TestPrototype { 
   public static void main(String[] args) {
       System.out.println(
         "Creating a Prototype Factory with " + 
         " a SoupSpoon and a SaladFork");
       PrototypeFactory prototypeFactory = 
         new PrototypeFactory(new SoupSpoon(), new SaladFork());
       AbstractSpoon spoon = 
         prototypeFactory.makeSpoon();
       AbstractFork fork = 
         prototypeFactory.makeFork();
       System.out.println("Getting the Spoon and Fork name:");
       System.out.println("Spoon: " + spoon.getSpoonName() + 
                          ", Fork: " + fork.getForkName());
       System.out.println(" ");       
       System.out.println("Creating a Prototype Factory " + 
                          "with a SaladSpoon and a SaladFork");
       prototypeFactory = 
         new PrototypeFactory(new SaladSpoon(), new SaladFork());
       spoon = prototypeFactory.makeSpoon();
       fork = prototypeFactory.makeFork();
       System.out.println("Getting the Spoon and Fork name:");
       System.out.println("Spoon: " + spoon.getSpoonName() + 
                          ", Fork: " + fork.getForkName());
    }
}      

Test Results

Creating a Prototype Factory with a SoupSpoon and a SaladFork


Getting the Spoon and Fork name:


Spoon: Soup Spoon, Fork: Salad Fork





Creating a Prototype Factory with a SaladSpoon and a SaladFork


Getting the Spoon and Fork name:


Spoon: Salad Spoon, Fork: Salad Fork


