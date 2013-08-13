namespace Behavioral.Visitor {


//DvdInfo.java - two of three concrete Visitees

public class DvdInfo : AbstractTitleInfo {  
   private string star;
   private char encodingRegion;
    
   public DvdInfo(string titleName, 
                  string star, 
                  char encodingRegion) {
       this.setTitleName(titleName);
       this.setStar(star);
       this.setEncodingRegion(encodingRegion);
   }    
   
   public void setStar(string starIn) {
       this.star = starIn;
   }
   public string getStar() {
       return this.star;
   }
   public void setEncodingRegion(char encodingRegionIn) {
       this.encodingRegion = encodingRegionIn;
   }
   public char getEncodingRegion() {
       return this.encodingRegion;
   }
   
   override public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   } 
}

}
