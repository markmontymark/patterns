//DvdActorExpression.java - One Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;

public class DvdActorExpression : DvdAbstractExpression 
{
   override public string interpret(DvdInterpreterContext dvdInterpreterContext) {
       List<string> actors = dvdInterpreterContext.getAllActors();
		return string.Join(", ",actors);
	}

}

}
