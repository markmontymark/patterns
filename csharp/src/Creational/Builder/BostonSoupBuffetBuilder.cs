//BostonSoupBuffetBuilder.java - One of Two Builder Subclasses

namespace Creational.Builder {

using common;

class BostonSoupBuffetBuilder : SoupBuffetBuilder {
    public new void buildClamChowder() {
       soupBuffet.clamChowder = new BostonClamChowder();
    }
    public new void buildFishChowder() {
       soupBuffet.fishChowder = new BostonFishChowder();
    }    
    
    override public void setSoupBuffetName() {
       soupBuffet.soupBuffetName = "Boston Soup Buffet";
    }
}

}
