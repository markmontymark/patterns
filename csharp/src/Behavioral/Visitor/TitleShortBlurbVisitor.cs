namespace Behavioral.Visitor {


//TitleShortBlurbVisitor.java - two of two concrete Visitors

public class TitleShortBlurbVisitor : TitleBlurbVisitor {
   override public void visit(BookInfo bookInfo) {
       this.setTitleBlurb("SB-Book: " + bookInfo.getTitleName());
   }   
   
   override public void visit(DvdInfo dvdInfo) {
       this.setTitleBlurb("SB-DVD: " + dvdInfo.getTitleName());
   }
   
   override public void visit(GameInfo gameInfo) {
       this.setTitleBlurb("SB-Game: " + gameInfo.getTitleName());
   }
}

}
