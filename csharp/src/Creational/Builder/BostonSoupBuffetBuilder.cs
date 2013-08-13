//BostonSoupBuffetBuilder.java - One of Two Builder Subclasses

namespace Creational.Builder {

using common;

class BostonSoupBuffetBuilder : SoupBuffetBuilder {
    override public void buildClamChowder() {
       soupBuffet.clamChowder = new BostonClamChowder();
    }
    override public void buildFishChowder() {
       soupBuffet.fishChowder = new BostonFishChowder();
    }    
    
    override public void setSoupBuffetName() {
       soupBuffet.soupBuffetName = "Boston Soup Buffet";
    }
}

}
