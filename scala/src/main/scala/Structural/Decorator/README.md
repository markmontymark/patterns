// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Decorator (aka Wrapper) Overview
One class takes in another class, both of which extend the same abstract class, and adds functionality.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
Tea - the abstract base class

abstract class Tea {  
   boolean teaIsSteeped; 
   
   abstract void steepTea();
}

TeaLeaves - the decoratee

class TeaLeaves extends Tea {  
   TeaLeaves() {
       teaIsSteeped = false;
   }
   
   void steepTea() {
       teaIsSteeped = true;
       System.out.println("tea leaves are steeping");
   }
}

ChaiDecorator - the decorator

import java.util.ArrayList;
import java.util.ListIterator;

class ChaiDecorator extends Tea {
    private Tea teaToMakeChai;
    private ArrayList chaiIngredients = new ArrayList();
    
    ChaiDecorator(Tea teaToMakeChai) {
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
    
    void steepTea() {
        this.steepChai();
    }

    void steepChai() {
        teaToMakeChai.steepTea();
        this.steepChaiIngredients();
        System.out.println("tea is steeping with chai");
    }    
    
    void steepChaiIngredients() {
        ListIterator listIterator = chaiIngredients.listIterator();
        while (listIterator.hasNext()) {
            System.out.println(((String)(listIterator.next())) + 
                                         " is steeping");
        }
        System.out.println("chai ingredients are steeping");
    }      
}

TestChaiDecorator - testing the decorator

class TestChaiDecorator {            
    
   static void main(String[] args) {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
       chaiDecorator.steepTea();
   }
}

Test Results

tea leaves are steeping
bay leaf is steeping
cinnamon stick is steeping
ginger is steeping
honey is steeping
soy milk is steeping
vanilla bean is steeping
chai ingredients are steeping
tea is steeping with chai


