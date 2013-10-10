package Behavioral.Interpreter;


//DvdActorTitleExpression - Two Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdActorTitleExpression extends DvdAbstractExpression {
   String title;
   
   public DvdActorTitleExpression(String title) {
       this.title = title;
   }
    
   public String interpret(DvdInterpreterContext dvdInterpreterContext) {
		 if( title == null )
			return "";

       ArrayList actorsAndTitles = 
           dvdInterpreterContext.getActorsForTitle(title);
       ListIterator actorsAndTitlesIterator = 
           actorsAndTitles.listIterator();
       StringBuffer actorBuffer = new StringBuffer("");
       boolean first = true;
       while (actorsAndTitlesIterator.hasNext()) {
           if (!first) {
               actorBuffer.append(", "); 
           } else {
               first = false;
           }
           actorBuffer.append((String)actorsAndTitlesIterator.next());
       }
       return actorBuffer.toString();
   }
}
