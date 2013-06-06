package Behavioral.Visitor;


//BookInfo.java - one of three concrete Visitees

public class BookInfo extends AbstractTitleInfo {  
   private String author;
    
   public BookInfo(String titleName, String author) {
       this.setTitleName(titleName);
       this.setAuthor(author);
   }    
   
   public void setAuthor(String authorIn) {
       this.author = authorIn;
   }
   public String getAuthor() {
       return this.author;
   }
   
   public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   }
}