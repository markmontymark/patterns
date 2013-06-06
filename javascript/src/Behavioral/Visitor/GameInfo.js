0


//GameInfo.java - three of three concrete Visitees

public class GameInfo extends AbstractTitleInfo {  
   public GameInfo(String titleName) {
       this.setTitleName(titleName);
   }    
   
   public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   }
}