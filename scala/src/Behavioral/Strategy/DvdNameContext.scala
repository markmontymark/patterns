package Behavioral.Strategy;


//DvdNameContext - the context

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
             this.dvdNameStrategy = 
               new DvdNameReplaceSpacesStrategy();
             break;
           default  : 
             this.dvdNameStrategy = new DvdNameTheAtEndStrategy();
       }     
   }  
   
   public String[] formatDvdNames(String[] namesIn) {
       return this.formatDvdNames(namesIn, ' ');
   }    
   
   public String[] formatDvdNames(String[] namesIn, char replacementIn) {
       String[] namesOut = new String[namesIn.length];
       for (int i = 0; i < namesIn.length; i++) {
           namesOut[i] = 
             dvdNameStrategy.formatDvdName(namesIn[i], replacementIn);
       }
       return namesOut;
   }
}
