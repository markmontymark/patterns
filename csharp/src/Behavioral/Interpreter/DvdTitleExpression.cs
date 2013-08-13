//DvdTitleExpression.java - Three Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;


public class DvdTitleExpression : DvdAbstractExpression {  
   override public string interpret(DvdInterpreterContext 
                           dvdInterpreterContext) {
       List<string> titles = dvdInterpreterContext.getAllTitles();
       return string.Join(", ", titles.ToArray() );
   }
}

}
