namespace Behavioral.Template_Method {


//DvdTitleInfo.java - one of three concrete templates

public class DvdTitleInfo : TitleInfo {  
   private string star;
   private char encodingRegion;
    
   public DvdTitleInfo(string titleName, 
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
   
   override public string getTitleBlurb() {
       return ("DVD: " + this.getTitleName() + 
               ", starring " + this.getStar());
   }
   
   public new string getDvdEncodingRegionInfo() {
       return (", encoding region: " + this.getEncodingRegion());
   }
}

}
