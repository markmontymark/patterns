0


//DvdTitleActorExpression.java - Four Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdTitleActorExpression extends DvdAbstractExpression {  
   String title;
   
   public DvdTitleActorExpression(String title) {
       this.title = title;
   }
    
   public String interpret(DvdInterpreterContext dvdInterpreterContext) {
       ArrayList titlesAndActors = 
           dvdInterpreterContext.getTitlesForActor(title);
       ListIterator titlesAndActorsIterator = 
           titlesAndActors.listIterator();
       StringBuffer titleBuffer = new StringBuffer("");
       boolean first = true;
       while (titlesAndActorsIterator.hasNext()) {
           if (!first) {
               titleBuffer.append(", ");
           } else {
               first = false;
           }
           titleBuffer.append((String)titlesAndActorsIterator.next());
       }
       return titleBuffer.toString();
   }
}