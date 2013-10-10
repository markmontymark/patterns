// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Strategy (aka Policy) Overview
An object controls which of a family of methods is called. Each method is in its' own class that extends a common base class.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
DvdNameStrategy - the abstract strategy

public abstract class DvdNameStrategy {   
   public abstract String 
     formatDvdName(String dvdName, char charIn);
}

DvdNameAllCapStrategy - one of three concrete strategies

public class DvdNameAllCapStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       return dvdName.toUpperCase();
   }
}

DvdNameTheAtEndStrategy - two of three concrete strategies

public class DvdNameTheAtEndStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       if (dvdName.startsWith("The ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", The");
       }
       if (dvdName.startsWith("THE ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", THE");
       }       
       if (dvdName.startsWith("the ")) {
           return new String(dvdName.substring(4, 
             (dvdName.length())) + ", the");
       }         
       return dvdName;
   }
}

DvdNameReplaceSpacesStrategy - three of three concrete strategies

public class DvdNameReplaceSpacesStrategy extends DvdNameStrategy {
   public String formatDvdName(String dvdName, char charIn) {
       return dvdName.replace(' ', charIn);
   }
}

DvdNameContext - the context

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
           System.out.println(
             "Dvd name before formatting: " + namesIn[i]);
           System.out.println(
             "Dvd name after formatting:  " + namesOut[i]);
           System.out.println("==========================");
       }
       return namesOut;
   }
}

TestDvdStrategy - testing the strategy

class TestDvdStrategy {            
    
   public static void main(String[] args) {
       DvdNameContext allCapContext = 
           new DvdNameContext('C');
       DvdNameContext theEndContext = 
           new DvdNameContext('E');
       DvdNameContext spacesContext = 
           new DvdNameContext('S');
       
       String dvdNames[] = new String[3];
       dvdNames[0] = "Jay and Silent Bob Strike Back";
       dvdNames[1] = "The Fast and the Furious";
       dvdNames[2] = "The Others";
       
       char replaceChar = '*';       
       
       System.out.println("Testing formatting with all caps");
       String[] dvdCapNames = 
           allCapContext.formatDvdNames(dvdNames);
       
       System.out.println(" ");         
       System.out.println(
           "Testing formatting with beginning the at end");
       String[] dvdEndNames = 
           theEndContext.formatDvdNames(dvdNames);     
       
       System.out.println(" ");       
       System.out.println(" Testing formatting with all spaces replaced with " + 
           replaceChar);
       String[] dvdSpcNames = 
           spacesContext.formatDvdNames(dvdNames, replaceChar);
   }
}      

Test Results

Testing formatting with all caps
Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  JAY AND SILENT BOB STRIKE BACK
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  THE FAST AND THE FURIOUS
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  THE OTHERS
==========================
 
Testing formatting with beginning the at end
Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay and Silent Bob Strike Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  Fast and the Furious, The
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  Others, The
==========================
 
Testing formatting with all spaces replaced with *
Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay*and*Silent*Bob*Strike*Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  The*Fast*and*the*Furious
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  The*Others
==========================


