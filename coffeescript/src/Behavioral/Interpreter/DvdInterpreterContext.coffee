0


//DvdInterpreterContext.java - The Context

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