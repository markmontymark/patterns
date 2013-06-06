package Behavioral.Visitor;


//TitleShortBlurbVisitor.java - two of two concrete Visitors

public class TitleShortBlurbVisitor extends TitleBlurbVisitor {
   public void visit(BookInfo bookInfo) {
       this.setTitleBlurb("SB-Book: " + bookInfo.getTitleName());
   }   
   
   public void visit(DvdInfo dvdInfo) {
       this.setTitleBlurb("SB-DVD: " + dvdInfo.getTitleName());
   }
   
   public void visit(GameInfo gameInfo) {
       this.setTitleBlurb("SB-Game: " + gameInfo.getTitleName());
   }
}