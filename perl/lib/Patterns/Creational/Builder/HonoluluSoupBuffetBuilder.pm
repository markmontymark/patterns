package Patterns::Creational::Builder;


//HonoluluSoupBuffetBuilder.java - Two of Two Builder Subclasses

class HonoluluSoupBuffetBuilder extends SoupBuffetBuilder {
    public void buildClamChowder() {
        soupBuffet.clamChowder = new HonoluluClamChowder();
    }
    public void buildFishChowder() {
        soupBuffet.fishChowder = new HonoluluFishChowder();
    }
    
    public void setSoupBuffetName() {
        soupBuffet.soupBuffetName = "Honolulu Soup Buffet";
    }
}