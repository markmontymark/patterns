//DvdActorExpression.java - One Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;

public class DvdActorExpression : DvdAbstractExpression 
{
   override public string interpret(DvdInterpreterContext dvdInterpreterContext) {
      List<string> actors = dvdInterpreterContext.getAllActors();
		//Console.WriteLine("actors toarray " + actors.ToArray());
		//Console.WriteLine("actors " + actors);
		//Console.WriteLine("actors join to array " + string.Join(", ",actors.ToArray()));
		//Console.WriteLine("actors join " + string.Join(", ",actors));
		//Console.WriteLine("actors join to array String " + String.Join(", ",actors.ToArray()));
		//Console.WriteLine("actors join String " + String.Join(", ",actors));
		string retval = string.Join(", ",actors.ToArray());
		Console.WriteLine("retval is " + retval);

		return retval;
	}

}

}
