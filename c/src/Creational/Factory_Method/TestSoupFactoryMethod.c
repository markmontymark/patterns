0


//TestSoupFactoryMethod.java - testing the factory method

class TestSoupFactoryMethod {         

   public static void main(String[] args) {
       
       SoupFactoryMethod soupFactoryMethod = 
         new SoupFactoryMethod();
       SoupBuffet soupBuffet = 
         soupFactoryMethod.makeSoupBuffet();
       soupBuffet.setSoupBuffetName(
         soupFactoryMethod.makeBuffetName());
       soupBuffet.setChickenSoup(
         soupFactoryMethod.makeChickenSoup());
       soupBuffet.setClamChowder(
         soupFactoryMethod.makeClamChowder()); 
       soupBuffet.setFishChowder(
         soupFactoryMethod.makeFishChowder());
       soupBuffet.setMinnestrone(
         soupFactoryMethod.makeMinnestrone());
       soupBuffet.setPastaFazul(
         soupFactoryMethod.makePastaFazul()); 
       soupBuffet.setTofuSoup(
         soupFactoryMethod.makeTofuSoup());
       soupBuffet.setVegetableSoup(
          soupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           soupBuffet.getSoupBuffetName() + 
                           soupBuffet.getTodaysSoups());
       
       
       SoupFactoryMethod bostonSoupFactoryMethod = 
         new BostonSoupFactoryMethodSubclass();
       SoupBuffet bostonSoupBuffet = 
         bostonSoupFactoryMethod.makeSoupBuffet();
       bostonSoupBuffet.setSoupBuffetName(
         bostonSoupFactoryMethod.makeBuffetName());
       bostonSoupBuffet.setChickenSoup(
         bostonSoupFactoryMethod.makeChickenSoup());
       bostonSoupBuffet.setClamChowder(
         bostonSoupFactoryMethod.makeClamChowder());
       bostonSoupBuffet.setFishChowder(
         bostonSoupFactoryMethod.makeFishChowder());
       bostonSoupBuffet.setMinnestrone(
         bostonSoupFactoryMethod.makeMinnestrone());
       bostonSoupBuffet.setPastaFazul(
         bostonSoupFactoryMethod.makePastaFazul());
       bostonSoupBuffet.setTofuSoup(
         bostonSoupFactoryMethod.makeTofuSoup());
       bostonSoupBuffet.setVegetableSoup(
         bostonSoupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           bostonSoupBuffet.getSoupBuffetName() + 
                           bostonSoupBuffet.getTodaysSoups());
       
       SoupFactoryMethod honoluluSoupFactoryMethod = 
         new HonoluluSoupFactoryMethodSubclass();
       SoupBuffet honoluluSoupBuffet = 
         honoluluSoupFactoryMethod.makeSoupBuffet();
       honoluluSoupBuffet.setSoupBuffetName(
         honoluluSoupFactoryMethod.makeBuffetName());
       honoluluSoupBuffet.setChickenSoup(
         honoluluSoupFactoryMethod.makeChickenSoup());
       honoluluSoupBuffet.setClamChowder(
         honoluluSoupFactoryMethod.makeClamChowder()); 
       honoluluSoupBuffet.setFishChowder(
         honoluluSoupFactoryMethod.makeFishChowder());
       honoluluSoupBuffet.setMinnestrone(
         honoluluSoupFactoryMethod.makeMinnestrone());
       honoluluSoupBuffet.setPastaFazul(
         honoluluSoupFactoryMethod.makePastaFazul()); 
       honoluluSoupBuffet.setTofuSoup(
         honoluluSoupFactoryMethod.makeTofuSoup());
       honoluluSoupBuffet.setVegetableSoup(
         honoluluSoupFactoryMethod.makeVegetableSoup()); 
       System.out.println("At the  " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups());
     }
}      