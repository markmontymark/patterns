// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Interpreter Overview
Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
DvdInterpreterClient.java - the Client

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

DvdInterpreterContext.java - The Context

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdInterpreterContext {
   private ArrayList titles = new ArrayList(); 
   private ArrayList actors = new ArrayList();
   private ArrayList titlesAndActors = new ArrayList();
   
   public void addTitle(String title) {
       titles.add(title);
   }
   public void addActor(String actor) {
       actors.add(actor);
   }
   public void addTitleAndActor(TitleAndActor titleAndActor) {
       titlesAndActors.add(titleAndActor);
   }
   
   public ArrayList getAllTitles() {
       return titles;
   }
   public ArrayList getAllActors() {
       return actors;
   }
   public ArrayList getActorsForTitle(String titleIn) {
       ArrayList actorsForTitle = new ArrayList();
       TitleAndActor tempTitleAndActor;
       ListIterator titlesAndActorsIterator = 
         titlesAndActors.listIterator();
       while (titlesAndActorsIterator.hasNext()) {
           tempTitleAndActor = 
             (TitleAndActor)titlesAndActorsIterator.next();
           if (titleIn.equals(tempTitleAndActor.getTitle())) {
               actorsForTitle.add(tempTitleAndActor.getActor());
           }
       }
       return actorsForTitle;
   }
   public ArrayList getTitlesForActor(String actorIn) {
       ArrayList titlesForActor = new ArrayList();
       TitleAndActor tempTitleAndActor;
       ListIterator actorsAndTitlesIterator = 
         titlesAndActors.listIterator();
       while (actorsAndTitlesIterator.hasNext()) {
           tempTitleAndActor = 
             (TitleAndActor)actorsAndTitlesIterator.next();
           if (actorIn.equals(tempTitleAndActor.getActor())) {
               titlesForActor.add(tempTitleAndActor.getTitle());
           }
       }
       return titlesForActor;
   }   
}

DvdAbstractExpression.java - The Abstract Expression

public abstract class DvdAbstractExpression {
   public abstract String interpret(
     DvdInterpreterContext dvdInterpreterContext);
}

DvdActorExpression.java - One Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdActorExpression extends DvdAbstractExpression {  
   public String interpret(DvdInterpreterContext dvdInterpreterContext) {
       ArrayList actors = dvdInterpreterContext.getAllActors();
       ListIterator actorsIterator = actors.listIterator();
       StringBuffer titleBuffer = new StringBuffer("");
       boolean first = true;
       while (actorsIterator.hasNext()) {
           if (!first) {
               titleBuffer.append(", ");
           } else {
               first = false;
           }
           titleBuffer.append((String)actorsIterator.next());
       }
       return titleBuffer.toString();
   }
}

DvdActorTitleExpression.java - Two Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdActorTitleExpression extends DvdAbstractExpression {
   String title;
   
   public DvdActorTitleExpression(String title) {
       this.title = title;
   }
    
   public String interpret(DvdInterpreterContext dvdInterpreterContext) {
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

DvdTitleExpression.java - Three Of Four Terminal Expressions

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdTitleExpression extends DvdAbstractExpression {  
   public String interpret(DvdInterpreterContext 
                           dvdInterpreterContext) {
       ArrayList titles = dvdInterpreterContext.getAllTitles();
       ListIterator titlesIterator = titles.listIterator();
       StringBuffer titleBuffer = new StringBuffer("");
       boolean first = true;
       while (titlesIterator.hasNext()) {
           if (!first) {
               titleBuffer.append(", ");
           } else {
               first = false;
           }    
           titleBuffer.append((String)titlesIterator.next());
       }
       return titleBuffer.toString();
   }
}

DvdTitleActorExpression.java - Four Of Four Terminal Expressions

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

TitleAndActor.java - A Helper Class

public class TitleAndActor {
    private String title;
    private String actor;
    public TitleAndActor(String title, String actor) {
        this.title = title;
        this.actor = actor;
    }
    public String getTitle() {return this.title;}
    public String getActor() {return this.actor;}
}     

TestDvdInterpreter.java - testing the Interpreter

class TestDvdInterpreter {
    
   public static void main(String[] args) {
       DvdInterpreterContext dvdInterpreterContext = 
         new DvdInterpreterContext();
       dvdInterpreterContext.addTitle("Caddy Shack");
       dvdInterpreterContext.addTitle("Training Day");
       dvdInterpreterContext.addTitle("Hamlet");

       dvdInterpreterContext.addActor("Ethan Hawke");
       dvdInterpreterContext.addActor("Denzel Washington");
       
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Hamlet", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Training Day", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Caddy Shack", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Training Day", "Denzel Washington"));
       
       DvdInterpreterClient dvdInterpreterClient = 
         new DvdInterpreterClient(dvdInterpreterContext);
       
       System.out.println(
         "interpreting show actor: " + 
          dvdInterpreterClient.interpret(
            "show actor"));
       System.out.println(
          "interpreting show actor for title : " + 
           dvdInterpreterClient.interpret(
             "show actor for title "));
       System.out.println(
          "interpreting show title: " + 
           dvdInterpreterClient.interpret(
             "show title")); 
       System.out.println(
          "interpreting show title for actor : " + 
           dvdInterpreterClient.interpret(
             "show title for actor "));
   }
}      

Test Results

interpreting show actor: 
  Query Result: Ethan Hawke, Denzel Washington
interpreting show actor for title : 
  Query Result: Ethan Hawke, Denzel Washington
interpreting show title: 
  Query Result: Caddy Shack, Training Day, Hamlet
interpreting show title for actor : 
  Query Result: Hamlet, Training Day, Caddy Shack


