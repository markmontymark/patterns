namespace Behavioral.Template_Method {


//BookTitleInfo.java - two of three concrete templates

public class BookTitleInfo : TitleInfo {  
   private string author;
    
   public BookTitleInfo(string titleName, string author) {
       this.setTitleName(titleName);
       this.setAuthor(author);
   }    
   
   public void setAuthor(string authorIn) {this.author = authorIn;}
   public string getAuthor() {return this.author;}   
   
   override public string getTitleBlurb() {
       return ("Book: " + this.getTitleName() + 
               ", Author: " + this.getAuthor());
   }
}

}
