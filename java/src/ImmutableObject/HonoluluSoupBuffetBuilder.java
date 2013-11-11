//HonoluluSoupBuffetBuilder.java - Two of Two Builder Subclasses

package ImmutableObject;

import common.*;

public class HonoluluSoupBuffetBuilder extends SoupBuffetBuilder {

    public ClamChowder buildClamChowder() {
        return new HonoluluClamChowder();
    }
    public FishChowder buildFishChowder() {
        return new HonoluluFishChowder();
    }
    
    public String buildSoupBuffetName() {
        return "Honolulu Soup Buffet";
    }
}
