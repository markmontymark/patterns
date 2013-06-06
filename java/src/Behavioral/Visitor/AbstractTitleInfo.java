package Behavioral.Visitor;


//AbstractTitleInfo.java - the abstract Visitee

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