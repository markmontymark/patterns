package Behavioral::Template_Method;


//GameTitleInfo.java - three of three concrete templates

public class GameTitleInfo extends TitleInfo {  
   public GameTitleInfo(String titleName) {
       this.setTitleName(titleName);
   }     
   
   public String getTitleBlurb() {
       return ("Game: " + this.getTitleName());
   }
}