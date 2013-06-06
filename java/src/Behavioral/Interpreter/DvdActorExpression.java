package Behavioral.Interpreter;


//DvdActorExpression.java - One Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdActorExpression extends DvdAbstractExpression {  
   public String interpret(DvdInterpreterContext dvdInterpreterContext) {
       ArrayList actors = dvdInterpreterContext.getAllActors();
       ListIterator actorsIterator = actors.listIterator();
       StringBuffer titleBuffer = new StringBuffer("");
       boolean first = true;
       while (actorsIterator.hasNext()) {
           if (!first) {
               titleBuffer.append(", ");
           } else {
               first = false;
           }
           titleBuffer.append((String)actorsIterator.next());
       }
       return titleBuffer.toString();
   }
}