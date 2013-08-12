//TestChaiDecorator.java - testing the decorator


package test.Structural;

import tap.*;
import Structural.Decorator.*;




class TestChaiDecorator {            
    
   public static void main(String[] args) {
       Tea teaLeaves = new TeaLeaves();
       Tea chaiDecorator = new ChaiDecorator(teaLeaves);
       chaiDecorator.steepTea();
   }
}
