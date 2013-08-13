namespace Behavioral.Observer {


//DvdSubscriber.java - the observer

public class DvdSubscriber {  
   private string subscriberName; 
   
   public DvdSubscriber(string subscriberNameIn) {
       this.subscriberName = subscriberNameIn;
   }
   
   public string getSubscriberName() {
       return this.subscriberName;
   }
   
   public string newDvdRelease(DvdRelease newDvdRelease, 
                             string subscriptionListName) {
       return "Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                             subscriptionListName + 
                          " DVD release list.\n" +
			"The new Dvd " + 
                            newDvdRelease.getDvdName() + 
                          " will be released on " + 
                            newDvdRelease.getDvdReleaseMonth() + "/" + 
                            newDvdRelease.getDvdReleaseDay() + "/" + 
                            newDvdRelease.getDvdReleaseYear() + ".";
   }
   
   public string updateDvdRelease(DvdRelease newDvdRelease, 
                                string subscriptionListName) {
       return "Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                            subscriptionListName +
                          " DVD release list.\n" +
         "The following DVDs release has been revised: " + 
         newDvdRelease.getDvdName() + " will be released on " + 
         newDvdRelease.getDvdReleaseMonth() + "/" + 
         newDvdRelease.getDvdReleaseDay() + "/" + 
         newDvdRelease.getDvdReleaseYear() + ".";
   }   
}

}
