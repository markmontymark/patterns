//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Interpreter Overview
//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
//DvdInterpreterClient.java - the Client


namespace Behavioral.Interpreter {


using System;
using System.Collections.Generic;


public class DvdInterpreterClient {  
   DvdInterpreterContext dvdInterpreterContext; 
   
   public DvdInterpreterClient(
     DvdInterpreterContext dvdInterpreterContext) {
       this.dvdInterpreterContext = dvdInterpreterContext;
   }
    
   // expression syntax:
   // show title | actor [for actor | title ]
   public string interpret(string expression) {
       List<string> result = new List<string>();
		result.Add("Query Result: ");
       
       char mainQuery = ' ';
       char subQuery = ' ';
       bool forUsed = false;
       string searchString = null;
       bool searchStarted = false;
       bool searchEnded = false;
       
       foreach (string currentToken in expression.Split(' '))
       {
			  if( currentToken == null || currentToken.Equals(string.Empty) )
					continue;
           if (currentToken.Equals("show")) {
               continue;
               //show in all queries, not really used
           } else if (currentToken.Equals("title")) {
               if (mainQuery == ' ') {
                   mainQuery = 'T';
               } else {
                   if ((subQuery == ' ') && (forUsed)) {
                       subQuery = 'T';
                   } 
               }
           } else if (currentToken.Equals("actor")) {
               if (mainQuery == ' ') {
                   mainQuery = 'A';
               } else {
                   if ((subQuery == ' ') && (forUsed)) {
                       subQuery = 'A';
                   }
               } 
           } else if (currentToken.Equals("for")) {
               forUsed = true;
           } else if ((searchString == null) && 
                      (subQuery != ' ') && 
                      (currentToken.StartsWith("<"))) {
                 searchString = currentToken;
                 searchStarted = true;
                 if (currentToken.EndsWith(">")) {
                     searchEnded = true;
                 }
           } else if ((searchStarted) && (!searchEnded)) {
               searchString = searchString + " " + currentToken;
               if (currentToken.EndsWith(">")) {
                   searchEnded = true;
               }
           }
       }

       if (searchString != null) {
           searchString = searchString.Remove('<').Remove('>');
             //remove <>
       }
       
       DvdAbstractExpression abstractExpression;
       
       switch (mainQuery) {
           case 'A' :  {
               switch (subQuery) {
                   case 'T' : {
                       abstractExpression = 
                         new DvdActorTitleExpression(searchString);
                       break;
                   }
                   default : {
                       abstractExpression = 
                         new DvdActorExpression();
                       break;
                   }
               }
               break;
           }      
           case 'T' : {
               switch (subQuery) {
                   case 'A' : {
                       abstractExpression = 
                         new DvdTitleActorExpression(searchString);
                       break;
                   }
                   default : {
                       abstractExpression = new DvdTitleExpression();
                       break;
                   }
               }
               break;
           }            
           
           default : return result.ToString();
       } 
       
       
       result.Add(
         abstractExpression.interpret(dvdInterpreterContext));
       
       return result.ToString();
   }
}

}
