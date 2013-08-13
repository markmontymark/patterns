namespace Behavioral.Template_Method {

using System;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo.java - the abstract Template

public abstract class TitleInfo {  
   private string titleName;
   
   //the "template method" - 
   //  calls the concrete class methods, is not overridden
   public string ProcessTitleInfo() {
       return this.getTitleBlurb() + this.getDvdEncodingRegionInfo();
   }  
   
   //the following 2 methods are "concrete abstract class methods"
   public void setTitleName(string titleNameIn) {
       this.titleName = titleNameIn;
   }
   public string getTitleName() {
       return this.titleName;
   }
   
   //this is a "primitive operation", 
   //  and must be overridden in the concrete templates
   public abstract string getTitleBlurb();
   
   //this is a "hook operation", which may be overridden, 
   //hook operations usually do nothing if not overridden 
   public string getDvdEncodingRegionInfo() {
       return " ";
   }
}

}
