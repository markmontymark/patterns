package Behavioral.Mediator;


//DvdLowercaseTitle.java - One of Two Concrete Colleagues or Mediatees

public class DvdLowercaseTitle extends DvdTitle {
   private String LowercaseTitle;
   private DvdMediator dvdMediator;
    
   public DvdLowercaseTitle(String title, DvdMediator dvdMediator) {
       this.setTitle(title);
       resetTitle();
       this.dvdMediator = dvdMediator;
       this.dvdMediator.setLowercase(this);
   }    
   
   public DvdLowercaseTitle(DvdTitle dvdTitle, 
                            DvdMediator dvdMediator) {
       this(dvdTitle.getTitle(), dvdMediator);
   }     
   
   public void resetTitle() {
       this.setLowercaseTitle(this.getTitle().toLowerCase());
   }
   public void resetTitle(String title) {
       this.setTitle(title);
       this.resetTitle();
   }
   
   public void setSuperTitleLowercase() {
       this.setTitle(this.getLowercaseTitle());
       dvdMediator.changeTitle(this);
   }
   
   public String getLowercaseTitle() {
       return LowercaseTitle;
   }
   private void setLowercaseTitle(String LowercaseTitle) {
       this.LowercaseTitle = LowercaseTitle;
   }
}