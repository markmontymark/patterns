package Behavioral.Visitor;


//DvdInfo.java - two of three concrete Visitees

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