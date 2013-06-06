package Behavioral::Template_Method;


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