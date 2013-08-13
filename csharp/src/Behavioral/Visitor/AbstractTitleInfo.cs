namespace Behavioral.Visitor {


//AbstractTitleInfo.java - the abstract Visitee

public abstract class AbstractTitleInfo {  
   private string titleName;    
   public void setTitleName(string titleNameIn) {
       this.titleName = titleNameIn;
   }
   public string getTitleName() {
       return this.titleName;
   }
    
   public abstract void accept(TitleBlurbVisitor titleBlurbVisitor);
}

}
