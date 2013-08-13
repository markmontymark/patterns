namespace Behavioral.Visitor {


//GameInfo.java - three of three concrete Visitees

public class GameInfo : AbstractTitleInfo {  
   public GameInfo(string titleName) {
       this.setTitleName(titleName);
   }    
   
   override public void accept(TitleBlurbVisitor titleBlurbVisitor) {
       titleBlurbVisitor.visit(this);
   }
}

}
