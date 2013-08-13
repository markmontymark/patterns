//DvdNameTheAtEndStrategy.java - two of three concrete strategies


namespace Behavioral.Strategy {

public class DvdNameTheAtEndStrategy : DvdNameStrategy {
   override public string formatDvdName(string dvdName, char charIn) {
       if (dvdName.StartsWith("The ")) {
           return dvdName.Substring(4, (dvdName.Length)) + ", The";
       }
       else if (dvdName.StartsWith("THE ")) {
           return dvdName.Substring(4, (dvdName.Length)) + ", THE";
       }       
       else if (dvdName.StartsWith("the ")) {
           return dvdName.Substring(4, (dvdName.Length)) + ", the";
       }         
       return dvdName;
   }
}

}
