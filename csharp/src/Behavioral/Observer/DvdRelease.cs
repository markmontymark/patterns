namespace Behavioral.Observer {


//DvdRelease.java - a helper class

public class DvdRelease {  
   private string serialNumber;
   private string dvdName; 
   private int dvdReleaseYear;
   private int dvdReleaseMonth;
   private int dvdReleaseDay;

   
   public DvdRelease(string serialNumber, 
                     string dvdName, 
                     int dvdReleaseYear, 
                     int dvdReleaseMonth, 
                     int dvdReleaseDay) {
       setSerialNumber(serialNumber);
       setDvdName(dvdName);
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);       
   }
   
   public void updateDvdRelease(string serialNumber, 
                                string dvdName, 
                                int dvdReleaseYear, 
                                int dvdReleaseMonth, 
                                int dvdReleaseDay) {
       setSerialNumber(serialNumber);
       setDvdName(dvdName);
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);        
   }   
   
   public void updateDvdReleaseDate(int dvdReleaseYear, 
                                    int dvdReleaseMonth, 
                                    int dvdReleaseDay) {
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);        
   }   
   
   public void setSerialNumber(string serialNumberIn) {
       this.serialNumber = serialNumberIn;
   }
   public string getSerialNumber() {
       return this.serialNumber;
   }
   
   public void setDvdName(string dvdNameIn) {
       this.dvdName = dvdNameIn;
   }
   public string getDvdName() {
       return this.dvdName;
   }
   
   public void setDvdReleaseYear(int dvdReleaseYearIn) {
       this.dvdReleaseYear = dvdReleaseYearIn;
   }
   public int getDvdReleaseYear() {
       return this.dvdReleaseYear;
   }
   
   public void setDvdReleaseMonth(int dvdReleaseMonthIn) {
       this.dvdReleaseMonth = dvdReleaseMonthIn;
   }
   public int getDvdReleaseMonth() {
       return this.dvdReleaseMonth;
   }
   
   public void setDvdReleaseDay(int dvdReleaseDayIn) {
       this.dvdReleaseDay = dvdReleaseDayIn;
   }
   public int getDvdReleaseDay() {
       return this.dvdReleaseDay;
   }
}

}
