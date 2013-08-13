//DvdActorTitleExpression.java - Two Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;


public class DvdActorTitleExpression : DvdAbstractExpression {
   string title;
   
   public DvdActorTitleExpression(string title) {
       this.title = title;
   }
    
   override public string interpret(DvdInterpreterContext dvdInterpreterContext) {
       List<string> actorsAndTitles = dvdInterpreterContext.getActorsForTitle(title);
		 return string.Join(", ", actorsAndTitles.ToArray() );
   }
}

}
