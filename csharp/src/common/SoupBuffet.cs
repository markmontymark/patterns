//SoupBuffet.java - A helper class

namespace common {

using System.Collections.Generic;

public class SoupBuffet {

   public string soupBuffetName;
   
   public ChickenSoup chickenSoup;
   public ClamChowder clamChowder;
   public FishChowder fishChowder;
   public Minnestrone minnestrone;
   public PastaFazul pastaFazul;
   public TofuSoup tofuSoup;
   public VegetableSoup vegetableSoup;

   public string getSoupBuffetName() {
       return soupBuffetName;
   }
   public void setSoupBuffetName(string soupBuffetNameIn) {
      soupBuffetName = soupBuffetNameIn;
   }
   
   public void setChickenSoup(ChickenSoup chickenSoupIn) {
       chickenSoup = chickenSoupIn;
   }
   public void setClamChowder(ClamChowder clamChowderIn) {
       clamChowder = clamChowderIn;
   }
   public void setFishChowder(FishChowder fishChowderIn) {
      fishChowder = fishChowderIn;
   }
   public void setMinnestrone(Minnestrone minnestroneIn) {
      minnestrone = minnestroneIn;
   }
   public void setPastaFazul(PastaFazul pastaFazulIn) {
       pastaFazul = pastaFazulIn;
   }
   public void setTofuSoup(TofuSoup tofuSoupIn) {
       tofuSoup = tofuSoupIn;
   }
   public void setVegetableSoup(VegetableSoup vegetableSoupIn) {
       vegetableSoup = vegetableSoupIn;
   }
   
   public string getTodaysSoups() {
        List<string> stringOfSoups = new List<string>();
        stringOfSoups.Add(" Today's Soups!  ");
        stringOfSoups.Add(" Chicken Soup: ");        
        stringOfSoups.Add(this.chickenSoup.getSoupName()); 
        stringOfSoups.Add(" Clam Chowder: ");        
        stringOfSoups.Add(this.clamChowder.getSoupName()); 
        stringOfSoups.Add(" Fish Chowder: ");        
        stringOfSoups.Add(this.fishChowder.getSoupName()); 
        stringOfSoups.Add(" Minnestrone: ");        
        stringOfSoups.Add(this.minnestrone.getSoupName());
        stringOfSoups.Add(" Pasta Fazul: ");        
        stringOfSoups.Add(this.pastaFazul.getSoupName());
        stringOfSoups.Add(" Tofu Soup: ");        
        stringOfSoups.Add(this.tofuSoup.getSoupName());
        stringOfSoups.Add(" Vegetable Soup: ");        
        stringOfSoups.Add(this.vegetableSoup.getSoupName());
        return string.Join(", ", stringOfSoups.ToArray());          
   }
}

}        
