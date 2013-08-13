//DvdInterpreterContext.java - The Context

namespace Behavioral.Interpreter {

using System;
using System.Collections.Generic;



public class DvdInterpreterContext {

   private List<string> titles;
   private List<string> actors;
   private List<TitleAndActor> titlesAndActors;

	public DvdInterpreterContext()
	{
		actors = new List<string>();
		titles = new List<string>();
		titlesAndActors = new List<TitleAndActor>();
	}
   
   public void addTitle(String title) {
       titles.Add(title);
   }
   public void addActor(String actor) {
       actors.Add(actor);
   }
   public void addTitleAndActor(TitleAndActor titleAndActor) {
       titlesAndActors.Add(titleAndActor);
   }
   
   public List<string> getAllTitles() {
       return titles;
   }
   public List<string> getAllActors() {
       return actors;
   }
   public List<string> getActorsForTitle(string titleIn) {
       List<string> actorsForTitle = new List<string>();
       foreach(TitleAndActor ta in titlesAndActors) {
           if (titleIn == ta.getTitle())
               actorsForTitle.Add(ta.getActor());
       }
       return actorsForTitle;
   }
   public List<string> getTitlesForActor(string actorIn) {
       List<string> titlesForActor = new List<string>();
       foreach (TitleAndActor ta in titlesAndActors )
			{
           if (actorIn == ta.getActor())
               titlesForActor.Add(ta.getTitle());
       }
       return titlesForActor;
   }   
}

}
