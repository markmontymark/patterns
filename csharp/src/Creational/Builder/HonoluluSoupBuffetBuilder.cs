//HonoluluSoupBuffetBuilder.java - Two of Two Builder Subclasses

namespace Creational.Builder {

using common;

class HonoluluSoupBuffetBuilder : SoupBuffetBuilder {
    public new void buildClamChowder() {
        soupBuffet.clamChowder = new HonoluluClamChowder();
    }
    public new void buildFishChowder() {
        soupBuffet.fishChowder = new HonoluluFishChowder();
    }
    
    override public void setSoupBuffetName() {
        soupBuffet.soupBuffetName = "Honolulu Soup Buffet";
    }
}

}
