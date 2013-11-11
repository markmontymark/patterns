//BostonSoupBuffetBuilder.java - One of Two Builder Subclasses

package ImmutableObject;

import common.*;

public class BostonSoupBuffetBuilder extends ImmutableObject.SoupBuffetBuilder {

	protected String buildSoupBuffetName() {
		return "Boston Soup Buffet";
	}
	protected ClamChowder buildClamChowder() {
		return new BostonClamChowder();
	}
	protected FishChowder buildFishChowder() {
		return new BostonFishChowder();
	}    

}
