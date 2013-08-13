//BookInfo.java - one of three concrete Visitees

namespace Behavioral.Visitor {


public class BookInfo : AbstractTitleInfo {  
   private string author;
    
   public BookInfo(string titleName, string author) {
       this.setTitleName(titleName);
       this.setAuthor(author);
   }    
   
   public void setAuthor(string authorIn) {
       this.author = authorIn;
   }
   public string getAuthor() {
       return this.author;
   }
   
   override public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   }
}

}
