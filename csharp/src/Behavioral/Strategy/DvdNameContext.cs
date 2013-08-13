namespace Behavioral.Strategy {

using System;
using System.Collections.Generic;



//DvdNameContext.java - the context

public class DvdNameContext {
   private DvdNameStrategy dvdNameStrategy; 
   
   public DvdNameContext(char strategyTypeIn) {
       switch (strategyTypeIn) {
           case 'C' : 
             this.dvdNameStrategy = new DvdNameAllCapStrategy(); 
             break;
           case 'E' : 
             this.dvdNameStrategy = new DvdNameTheAtEndStrategy(); 
             break;
           case 'S' : 
             this.dvdNameStrategy = new DvdNameReplaceSpacesStrategy();
             break;
           default  : 
             this.dvdNameStrategy = new DvdNameTheAtEndStrategy();
					break;
       }     
   }  
   
   public List<string> formatDvdNames(List<string> namesIn) {
       return this.formatDvdNames(namesIn, ' ');
   }    
   
   public List<string> formatDvdNames(List<string> namesIn, char replacementIn) {
       List<string> namesOut = new List<string>();
       foreach (string name in namesIn) {
           namesOut.Add( dvdNameStrategy.formatDvdName(name, replacementIn) );
       }
       return namesOut;
   }
}

}
