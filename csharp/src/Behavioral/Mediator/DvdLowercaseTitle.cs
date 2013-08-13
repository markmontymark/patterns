namespace Behavioral.Mediator {


//DvdLowercaseTitle.java - One of Two Concrete Colleagues or Mediatees

public class DvdLowercaseTitle : DvdTitle {
   private string LowercaseTitle;
   private DvdMediator dvdMediator;
    
   public DvdLowercaseTitle(string title, DvdMediator dvdMediator) {
       this.setTitle(title);
       resetTitle();
       this.dvdMediator = dvdMediator;
       this.dvdMediator.setLowercase(this);
   }    
   
   public DvdLowercaseTitle(DvdTitle dvdTitle, 
                            DvdMediator dvdMediator) 
       : this(dvdTitle.getTitle(), dvdMediator)
	{
   }     
   
   public void resetTitle() {
       this.setLowercaseTitle(this.getTitle().ToLower());
   }
   public void resetTitle(string title) {
       this.setTitle(title);
       this.resetTitle();
   }
   
   public void setSuperTitleLowercase() {
       this.setTitle(this.getLowercaseTitle());
       dvdMediator.changeTitle(this);
   }
   
   public string getLowercaseTitle() {
       return LowercaseTitle;
   }
   private void setLowercaseTitle(string LowercaseTitle) {
       this.LowercaseTitle = LowercaseTitle;
   }
}

}
