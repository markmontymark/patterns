0


//TitleLongBlurbVisitor.java - one of two concrete Visitors

public class TitleLongBlurbVisitor extends TitleBlurbVisitor {
   public void visit(BookInfo bookInfo) {
       this.setTitleBlurb("LB-Book: " + 
                           bookInfo.getTitleName() + 
                           ", Author: " + 
                           bookInfo.getAuthor());
   }   
   
   public void visit(DvdInfo dvdInfo) {
       this.setTitleBlurb("LB-DVD: " + 
                           dvdInfo.getTitleName() + 
                           ", starring " + 
                           dvdInfo.getStar() + 
                           ", encoding region: " + 
                           dvdInfo.getEncodingRegion());
   }   
   
   public void visit(GameInfo gameInfo) {
       this.setTitleBlurb("LB-Game: " + 
                           gameInfo.getTitleName());
   }   
}   