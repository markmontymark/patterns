//DvdTitleExpression.java - Three Of Four Terminal Expressions

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;


public class DvdTitleExpression : DvdAbstractExpression {  
   override public string interpret(DvdInterpreterContext 
                           dvdInterpreterContext) {
       List<string> titles = dvdInterpreterContext.getAllTitles();
       List<string> titleBuffer = new List<string>();
       bool first = true;
       foreach( string title in titles )
			{
           if (!first)
               titleBuffer.Add(", ");
           else
               first = false;

           titleBuffer.Add(title );
       }
       return titleBuffer.ToString();
   }
}

}
