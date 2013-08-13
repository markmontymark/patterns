
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Memento
//Memento (aka Token) Overview
//One object stores another objects state.
//DvdDetails.java - the Originator
//(the class to be backed up)
//Contains the inner class DvdMemento - the Memento


////the originator


namespace Behavioral.Memento {


using System;
using System.Collections.Generic;



public class DvdDetails {  
   private string titleName;  
   private List<string> stars;
   private char encodingRegion;
    
   public DvdDetails(string titleName, 
                     List<string> stars, 
                     char encodingRegion) {
       this.setTitleName(titleName);
       this.setStars(stars);
       this.setEncodingRegion(encodingRegion);
   }    
  
   private void setTitleName(string titleNameIn) {
       this.titleName = titleNameIn;
   }
   private string getTitleName() {
       return this.titleName;
   }
   
   private void setStars(List<string> starsIn) {
       this.stars = starsIn;
   }
   public void addStar(string starIn) {
       stars.Add(starIn);
   }
   private List<string> getStars() {
       return this.stars;
   }
   private string getStarsString(List<string> starsIn) {
		 return string.Join(", ",stars.ToArray());
   } 
   
   private void setEncodingRegion(char encodingRegionIn) {
      this.encodingRegion = encodingRegionIn;
   }
   private char getEncodingRegion() {
       return this.encodingRegion;
   }  
   
   public string formatDvdDetails() {
       return ("DVD: " + this.getTitleName() + 
               ", starring: " + getStarsString(getStars()) + 
               ", encoding region: " + this.getEncodingRegion()); 
   }   
   
   //sets current state to what DvdMemento has
   public void setDvdMemento(DvdMemento dvdMementoIn) {
       dvdMementoIn.getState(this);
   }
   //save current state of DvdDetails in a DvdMemento
   public DvdMemento createDvdMemento() {
       DvdMemento mementoToReturn = new DvdMemento();
       mementoToReturn.setState(this);
       return mementoToReturn;
   }
   
   //an inner class for the memento
   public class DvdMemento {
       private string mementoTitleName;  
       private List<string> mementoStars;
       private char mementoEncodingRegion;       
       
       //sets DvdMementoData to DvdDetails
       public void setState(DvdDetails d) {
            //Because string are immutable we can just set 
            //  the DvdMemento Strings to = the DvdDetail Strings.
            mementoTitleName = d.getTitleName();
            mementoEncodingRegion = d.getEncodingRegion();
            //However, Lists are not immutable,
            //  so we need to instantiate a new List. 
            mementoStars = new List<string>(d.getStars());
       } 
       //resets DvdDetails to DvdMementoData
       public void getState(DvdDetails d) {
            d.setTitleName(mementoTitleName);
            d.setStars(mementoStars);
            d.setEncodingRegion(mementoEncodingRegion);  
       }    
       
       //only useful for testing
       public string showMemento() {
            return ("DVD: " + mementoTitleName + 
                    ", starring: " + string.Join(", ", mementoStars.ToArray()) + 
                    ", encoding region: " + mementoEncodingRegion); 
       }      
   }
}

}
