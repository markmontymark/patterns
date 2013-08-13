namespace Behavioral.Strategy {


//DvdNameAllCapStrategy.java - one of three concrete strategies

public class DvdNameAllCapStrategy : DvdNameStrategy {
  override public string formatDvdName(string dvdName, char charIn) {
       return dvdName.ToUpper();
   }
}

}
