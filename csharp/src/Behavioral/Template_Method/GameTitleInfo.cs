namespace Behavioral.Template_Method {


//GameTitleInfo.java - three of three concrete templates

public class GameTitleInfo : TitleInfo {  
   public GameTitleInfo(string titleName) {
       this.setTitleName(titleName);
   }     
   
   override public string getTitleBlurb() {
       return ("Game: " + this.getTitleName());
   }
}

}
