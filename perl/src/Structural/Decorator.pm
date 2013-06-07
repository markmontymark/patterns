

package Structural::Decorator::ChaiDecorator;


//ChaiDecorator.java - the decorator

import java.util.ArrayList;
import java.util.ListIterator;

public class ChaiDecorator extends Tea {
    private Tea teaToMakeChai;
    private ArrayList chaiIngredients = new ArrayList();
    
    public ChaiDecorator(Tea teaToMakeChai) {
        this.addTea(teaToMakeChai);
        chaiIngredients.add("bay leaf");
        chaiIngredients.add("cinnamon stick");
        chaiIngredients.add("ginger");
        chaiIngredients.add("honey");
        chaiIngredients.add("soy milk");
        chaiIngredients.add("vanilla bean");
    }

    private void addTea(Tea teaToMakeChaiIn) {
        this.teaToMakeChai = teaToMakeChaiIn;
    }
    
    public void steepTea() {
        this.steepChai();
    }

    public void steepChai() {
        teaToMakeChai.steepTea();
        this.steepChaiIngredients();
        System.out.println("tea is steeping with chai");
    }    
    
    public void steepChaiIngredients() {
        ListIterator listIterator = chaiIngredients.listIterator();
        while (listIterator.hasNext()) {
            System.out.println(((String)(listIterator.next())) + 
                                         " is steeping");
        }
        System.out.println("chai ingredients are steeping");
    }      
}



package Structural::Decorator::TeaLeaves;


//TeaLeaves.java - the decoratee

public class TeaLeaves extends Tea {  
   public TeaLeaves() {
       teaIsSteeped = false;
   }
   
   public void steepTea() {
       teaIsSteeped = true;
       System.out.println("tea leaves are steeping");
   }
}



package Structural::Decorator::Tea;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Decorator (aka Wrapper) Overview
//One class takes in another class, both of which extend the same abstract class, and adds functionality.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//Tea.java - the abstract base class

public abstract class Tea {  
   boolean teaIsSteeped; 
   
   public abstract void steepTea();
}



package Structural::Decorator::TestChaiDecorator;


//TestChaiDecorator.java - testing the decorator

class TestChaiDecorator {            
    
   public static void main(String[] args) {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
       chaiDecorator.steepTea();
   }
}

