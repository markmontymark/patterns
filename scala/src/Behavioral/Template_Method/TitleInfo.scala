package Behavioral.Template_Method;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo - the abstract Template

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