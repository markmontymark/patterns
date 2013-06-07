

package Behavioral::Template_Method::TestTitleInfoTemplate;


//TestTitleInfoTemplate.java - testing the Template

class TestTitleInfoTemplate {
    
   public static void main(String[] args) {
       TitleInfo bladeRunner = 
         new DvdTitleInfo("Blade Runner", 
                          "Harrison Ford", '1'); 
       TitleInfo electricSheep = 
         new BookTitleInfo("Do Androids Dream of Electric Sheep?", 
                           "Phillip K. Dick");        
       TitleInfo sheepRaider = 
         new GameTitleInfo("Sheep Raider");
       
       System.out.println(" ");       
       System.out.println("Testing bladeRunner   " +   
                           bladeRunner.ProcessTitleInfo());
       System.out.println("Testing electricSheep " + 
                           electricSheep.ProcessTitleInfo());
       System.out.println("Testing sheepRaider   " +   
                           sheepRaider.ProcessTitleInfo());
   }
}



package Behavioral::Template_Method::BookTitleInfo;


//BookTitleInfo.java - two of three concrete templates

public class BookTitleInfo extends TitleInfo {  
   private String author;
    
   public BookTitleInfo(String titleName, String author) {
       this.setTitleName(titleName);
       this.setAuthor(author);
   }    
   
   public void setAuthor(String authorIn) {this.author = authorIn;}
   public String getAuthor() {return this.author;}   
   
   public String getTitleBlurb() {
       return ("Book: " + this.getTitleName() + 
               ", Author: " + this.getAuthor());
   }
}



package Behavioral::Template_Method::DvdTitleInfo;


//DvdTitleInfo.java - one of three concrete templates

public class DvdTitleInfo extends TitleInfo {  
   private String star;
   private char encodingRegion;
    
   public DvdTitleInfo(String titleName, 
                       String star, 
                       char encodingRegion) {
       this.setTitleName(titleName);
       this.setStar(star);
       this.setEncodingRegion(encodingRegion);
   }    
   
   public void setStar(String starIn) {
       this.star = starIn;
   }
   public String getStar() {
       return this.star;
   }
   public void setEncodingRegion(char encodingRegionIn) {
       this.encodingRegion = encodingRegionIn;
   }
   public char getEncodingRegion() {
       return this.encodingRegion;
   }
   
   public String getTitleBlurb() {
       return ("DVD: " + this.getTitleName() + 
               ", starring " + this.getStar());
   }
   
   public String getDvdEncodingRegionInfo() {
       return (", encoding region: " + this.getEncodingRegion());
   }
}



package Behavioral::Template_Method::TitleInfo;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo.java - the abstract Template

public abstract class TitleInfo {  
   private String titleName;
   
   //the "template method" - 
   //  calls the concrete class methods, is not overridden
   public final String ProcessTitleInfo() {
       StringBuffer titleInfo = new StringBuffer();

       titleInfo.append(this.getTitleBlurb());
       titleInfo.append(this.getDvdEncodingRegionInfo());
       
       return titleInfo.toString();
   }  
   
   //the following 2 methods are "concrete abstract class methods"
   public final void setTitleName(String titleNameIn) {
       this.titleName = titleNameIn;
   }
   public final String getTitleName() {
       return this.titleName;
   }
   
   //this is a "primitive operation", 
   //  and must be overridden in the concrete templates
   public abstract String getTitleBlurb();
   
   //this is a "hook operation", which may be overridden, 
   //hook operations usually do nothing if not overridden 
   public String getDvdEncodingRegionInfo() {
       return " ";
   }
}



package Behavioral::Template_Method::GameTitleInfo;


//GameTitleInfo.java - three of three concrete templates

public class GameTitleInfo extends TitleInfo {  
   public GameTitleInfo(String titleName) {
       this.setTitleName(titleName);
   }     
   
   public String getTitleBlurb() {
       return ("Game: " + this.getTitleName());
   }
}

