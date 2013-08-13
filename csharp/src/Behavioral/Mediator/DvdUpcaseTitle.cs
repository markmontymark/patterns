namespace Behavioral.Mediator {


//DvdUpcaseTitle.java - Two of Two Concrete Colleagues or Mediatees

public class DvdUpcaseTitle : DvdTitle {  
   private string upcaseTitle;
   private DvdMediator dvdMediator;
    
   public DvdUpcaseTitle(string title, 
                         DvdMediator dvdMediator) {
       this.setTitle(title);
       resetTitle();
       this.dvdMediator = dvdMediator;
       this.dvdMediator.setUpcase(this);
   }    
   
   public DvdUpcaseTitle(DvdTitle dvdTitle, 
                         DvdMediator dvdMediator) 
       : this(dvdTitle.getTitle(), dvdMediator)
	{
   }       
   
   public void resetTitle() {
       this.setUpcaseTitle(this.getTitle().ToUpper());
   }
   public void resetTitle(string title) {
       this.setTitle(title);
       this.resetTitle();
   }    
   
   public void setSuperTitleUpcase() {
       this.setTitle(this.getUpcaseTitle());
       dvdMediator.changeTitle(this);       
   }
   
   public string getUpcaseTitle() {
      return upcaseTitle;
   }
   private void setUpcaseTitle(string upcaseTitle) {
       this.upcaseTitle = upcaseTitle;
   }
}

}
