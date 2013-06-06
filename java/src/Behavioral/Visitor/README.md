// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Visitor (uses double-dispatch) Overview
One or more related classes have the same method, which calls a method specific for themselves in another class.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
TitleBlurbVisitor.java - the abstract Visitor

public abstract class TitleBlurbVisitor {
   String titleBlurb;
   public void setTitleBlurb(String blurbIn) {
       this.titleBlurb = blurbIn;
   }
   public String getTitleBlurb() {
       return this.titleBlurb;
   }
    
   public abstract void visit(BookInfo bookInfo);
   public abstract void visit(DvdInfo dvdInfo);   
   public abstract void visit(GameInfo gameInfo);
}   

TitleLongBlurbVisitor.java - one of two concrete Visitors

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

TitleShortBlurbVisitor.java - two of two concrete Visitors

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

AbstractTitleInfo.java - the abstract Visitee

public abstract class AbstractTitleInfo {  
   private String titleName;    
   public final void setTitleName(String titleNameIn) {
       this.titleName = titleNameIn;
   }
   public final String getTitleName() {
       return this.titleName;
   }
    
   public abstract void accept(TitleBlurbVisitor titleBlurbVisitor);
}

BookInfo.java - one of three concrete Visitees

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

DvdInfo.java - two of three concrete Visitees

public class DvdInfo extends AbstractTitleInfo {  
   private String star;
   private char encodingRegion;
    
   public DvdInfo(String titleName, 
                  String star, 
                  char encodingRegion) {
       this.setTitleName(titleName);
       this.setStar(star);
       this.setEncodingRegion(encodingRegion);
   }    
   
   public void setStar(String starIn) {
       this.star = starIn;
   }
   public String getStar() {
       return this.star;
   }
   public void setEncodingRegion(char encodingRegionIn) {
       this.encodingRegion = encodingRegionIn;
   }
   public char getEncodingRegion() {
       return this.encodingRegion;
   }
   
   public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   } 
}

GameInfo.java - three of three concrete Visitees

public class GameInfo extends AbstractTitleInfo {  
   public GameInfo(String titleName) {
       this.setTitleName(titleName);
   }    
   
   public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   }
}

TestTitleVisitor.java - testing the Visitor

class TestTitleVisitor {
   public static void main(String[] args) {
       AbstractTitleInfo bladeRunner = 
         new DvdInfo("Blade Runner", "Harrison Ford", '1');
       AbstractTitleInfo electricSheep = 
         new BookInfo("Do Androids Dream of Electric Sheep?", 
                      "Phillip K. Dick");
       AbstractTitleInfo sheepRaider = 
         new GameInfo("Sheep Raider");
       
       TitleBlurbVisitor titleLongBlurbVisitor = 
         new TitleLongBlurbVisitor();
       
       System.out.println("Long Blurbs:");     
       bladeRunner.accept(titleLongBlurbVisitor);
       System.out.println("Testing bladeRunner   " + 
                           titleLongBlurbVisitor.getTitleBlurb());
       electricSheep.accept(titleLongBlurbVisitor);
       System.out.println("Testing electricSheep " + 
                           titleLongBlurbVisitor.getTitleBlurb());
       sheepRaider.accept(titleLongBlurbVisitor);
       System.out.println("Testing sheepRaider   " + 
                           titleLongBlurbVisitor.getTitleBlurb());
       
       TitleBlurbVisitor titleShortBlurbVisitor = 
         new TitleShortBlurbVisitor();
       
       System.out.println("Short Blurbs:");     
       bladeRunner.accept(titleShortBlurbVisitor);
       System.out.println("Testing bladeRunner   " + 
         titleShortBlurbVisitor.getTitleBlurb());
       electricSheep.accept(titleShortBlurbVisitor);
       System.out.println("Testing electricSheep " + 
         titleShortBlurbVisitor.getTitleBlurb());
       sheepRaider.accept(titleShortBlurbVisitor);
       System.out.println("Testing sheepRaider   " + 
         titleShortBlurbVisitor.getTitleBlurb());
   }
}      

Test Results

Long Blurbs:


Testing bladeRunner   LB-DVD: 
  Blade Runner, starring Harrison Ford, encoding region: 1
Testing electricSheep LB-Book: 
  Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick
Testing sheepRaider   LB-Game: 
  Sheep Raider


Short Blurbs:
Testing bladeRunner   SB-DVD: 
  Blade Runner
Testing electricSheep SB-Book: 
  Do Androids Dream of Electric Sheep?
Testing sheepRaider   SB-Game: 
  Sheep Raider 