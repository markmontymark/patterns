//HonoluluSoupBuffetBuilder.java - Two of Two Builder Subclasses

namespace Creational.Builder {

using common;

class HonoluluSoupBuffetBuilder : SoupBuffetBuilder {
    override public void buildClamChowder() {
        soupBuffet.clamChowder = new HonoluluClamChowder();
    }
    override public void buildFishChowder() {
        soupBuffet.fishChowder = new HonoluluFishChowder();
    }
    
    override public void setSoupBuffetName() {
        soupBuffet.soupBuffetName = "Honolulu Soup Buffet";
    }
}

}
