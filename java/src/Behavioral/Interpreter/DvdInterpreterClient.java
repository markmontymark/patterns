package Behavioral.Interpreter;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Interpreter Overview
//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
//DvdInterpreterClient.java - the Client

import java.util.StringTokenizer;

public class DvdInterpreterClient {  
   DvdInterpreterContext dvdInterpreterContext; 
   
   public DvdInterpreterClient(
     DvdInterpreterContext dvdInterpreterContext) {
       this.dvdInterpreterContext = dvdInterpreterContext;
   }
    
   // expression syntax:
   // show title | actor [for actor | title ]
   public String interpret(String expression) {
       StringBuffer result = new StringBuffer("Query Result: ");
       
       String currentToken;
       StringTokenizer expressionTokens = 
         new StringTokenizer(expression);
       
       char mainQuery = ' ';
       char subQuery = ' ';
       boolean forUsed = false;
       String searchString = null;
       boolean searchStarted = false;
       boolean searchEnded = false;
       
       while (expressionTokens.hasMoreTokens())
       {
           currentToken = expressionTokens.nextToken();
           if (currentToken.equals("show")) {
               continue;
               //show in all queries, not really used
           } else if (currentToken.equals("title")) {
               if (mainQuery == ' ') {
                   mainQuery = 'T';
               } else {
                   if ((subQuery == ' ') && (forUsed)) {
                       subQuery = 'T';
                   } 
               }
           } else if (currentToken.equals("actor")) {
               if (mainQuery == ' ') {
                   mainQuery = 'A';
               } else {
                   if ((subQuery == ' ') && (forUsed)) {
                       subQuery = 'A';
                   }
               } 
           } else if (currentToken.equals("for")) {
               forUsed = true;
           } else if ((searchString == null) && 
                      (subQuery != ' ') && 
                      (currentToken.startsWith("<"))) {
                 searchString = currentToken;
                 searchStarted = true;
                 if (currentToken.endsWith(">")) {
                     searchEnded = true;
                 }
           } else if ((searchStarted) && (!searchEnded)) {
               searchString = searchString + " " + currentToken;
               if (currentToken.endsWith(">")) {
                   searchEnded = true;
               }
           }
       }

       if (searchString != null) {
           searchString = 
             searchString.substring(1,(searchString.length() - 1));
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
           
           default : return result.toString();
       } 
       
       
       result.append(
         abstractExpression.interpret(dvdInterpreterContext));
       
       return result.toString();
   }
}