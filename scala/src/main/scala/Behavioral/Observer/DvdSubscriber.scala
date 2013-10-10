package Behavioral.Observer;


//DvdSubscriber - the observer

import java.util.*;
import org.apache.commons.lang3.StringUtils;

public class DvdSubscriber {  
   private String subscriberName; 
   
   public DvdSubscriber(String subscriberNameIn) {
       this.subscriberName = subscriberNameIn;
   }
   
   public String getSubscriberName() {
       return this.subscriberName;
   }
   
   public String newDvdRelease(DvdRelease newDvdRelease, 
                             String subscriptionListName) 
	{
			List<String> retval = new ArrayList<String>();
       retval.add("Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                             subscriptionListName + 
                          " DVD release list.");
       retval.add("The new Dvd " + 
                            newDvdRelease.getDvdName() + 
                          " will be released on " + 
                            newDvdRelease.getDvdReleaseMonth() + "/" + 
                            newDvdRelease.getDvdReleaseDay() + "/" + 
                            newDvdRelease.getDvdReleaseYear() + ".");
		 return StringUtils.join(retval,"\n");
   }
   
   public String updateDvdRelease(DvdRelease newDvdRelease, String subscriptionListName) 
	{
			List<String> retval = new ArrayList<String>();
       retval.add("Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                            subscriptionListName +
                          " DVD release list.");
       retval.add(
         "The following DVDs release has been revised: " + 
         newDvdRelease.getDvdName() + " will be released on " + 
         newDvdRelease.getDvdReleaseMonth() + "/" + 
         newDvdRelease.getDvdReleaseDay() + "/" + 
         newDvdRelease.getDvdReleaseYear() + ".");
		 return StringUtils.join(retval,"\n");
   }   
}
