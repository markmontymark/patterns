//DvdTitleActorExpression.java - Four Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;


public class DvdTitleActorExpression : DvdAbstractExpression {  
   string title;
   
   public DvdTitleActorExpression(string title) {
       this.title = title;
   }
    
   override public string interpret(DvdInterpreterContext dvdInterpreterContext) 
	{
		List<string> titlesAndActors = dvdInterpreterContext.getTitlesForActor(title);
		return string.Join(", ",titlesAndActors.ToArray());
   }
}

}
