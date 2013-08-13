namespace Behavioral.Strategy {


//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies

public class DvdNameReplaceSpacesStrategy : DvdNameStrategy {
   override public string formatDvdName(string dvdName, char charIn) {
       return dvdName.Replace(' ', charIn);
   }
}

}
