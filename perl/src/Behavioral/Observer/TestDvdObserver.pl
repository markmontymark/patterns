package Behavioral::Observer;


//TestDvdObserver.java - testing the observer

class TestDvdObserver {
    
   public static void main(String[] args) {
       DvdReleaseByCategory btvs = 
           new DvdReleaseByCategory("Buffy the Vampire Slayer");
       DvdReleaseByCategory simpsons = 
           new DvdReleaseByCategory("The Simpsons");  
       DvdReleaseByCategory sopranos = 
           new DvdReleaseByCategory("The Sopranos");
       DvdReleaseByCategory xfiles = 
           new DvdReleaseByCategory("The X-Files");
       
       DvdSubscriber jsopra = new DvdSubscriber("Junior Soprano");
       DvdSubscriber msimps = new DvdSubscriber("Maggie Simpson");
       DvdSubscriber rgiles = new DvdSubscriber("Rupert Giles");
       DvdSubscriber smulde = new DvdSubscriber("Samantha Mulder");
       DvdSubscriber wrosen = new DvdSubscriber("Willow Rosenberg");

       btvs.addSubscriber(rgiles);
       btvs.addSubscriber(wrosen);  
       simpsons.addSubscriber(msimps);
       sopranos.addSubscriber(jsopra);
       xfiles.addSubscriber(smulde);
       xfiles.addSubscriber(wrosen);
       
       DvdRelease btvsS2 = 
         new DvdRelease("DVDFOXBTVSS20", 
                        "Buffy The Vampire Slayer Season 2",
                         2002, 06, 11);
       DvdRelease simpS2 = 
         new DvdRelease("DVDFOXSIMPSO2", 
                        "The Simpsons Season 2",
                         2002, 07,  9);
       DvdRelease soprS2 = 
         new DvdRelease("DVDHBOSOPRAS2", 
                        "The Sopranos Season 2",
                         2001, 11,  6);
       DvdRelease xfilS5 = 
         new DvdRelease("DVDFOXXFILES5", 
                        "The X-Files Season 5",
                         2002, 04,  1);
       
       btvs.newDvdRelease(btvsS2);
       simpsons.newDvdRelease(simpS2);
       sopranos.newDvdRelease(soprS2);
       xfiles.newDvdRelease(xfilS5);
       
       xfiles.removeSubscriber(wrosen);
       
       xfilS5.updateDvdReleaseDate(2002, 5, 14);
       xfiles.updateDvd(xfilS5);
   }
}      