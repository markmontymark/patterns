0


//TestSoupBuffetBuilder.java - Testing the builder

class TestSoupBuffetBuilder {

   public static SoupBuffet CreateSoupBuffet(
     SoupBuffetBuilder soupBuffetBuilder) { 
        soupBuffetBuilder.buildSoupBuffet();
        
        soupBuffetBuilder.setSoupBuffetName();
        
        soupBuffetBuilder.buildChickenSoup();
        soupBuffetBuilder.buildClamChowder();
        soupBuffetBuilder.buildFishChowder();    
        soupBuffetBuilder.buildMinnestrone();
        soupBuffetBuilder.buildPastaFazul();
        soupBuffetBuilder.buildTofuSoup();
        soupBuffetBuilder.buildVegetableSoup();
        
        return soupBuffetBuilder.getSoupBuffet();
   }     
    
   public static void main(String[] args) {
       
       SoupBuffet bostonSoupBuffet = 
         CreateSoupBuffet(new BostonSoupBuffetBuilder());
       System.out.println("At the " + 
                           bostonSoupBuffet.getSoupBuffetName() + 
                           bostonSoupBuffet.getTodaysSoups());

       SoupBuffet honoluluSoupBuffet = 
         CreateSoupBuffet(new HonoluluSoupBuffetBuilder());
       System.out.println("At the " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups());
   }
}      