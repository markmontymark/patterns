
package ImmutableObject;

import common.*;

abstract public class SoupBuffetBuilder {
 
	public ImmutableObject.SoupBuffet buildSoupBuffet() {
		return new ImmutableObject.SoupBuffet(
			buildSoupBuffetName(),
			buildChickenSoup(),
			buildClamChowder(),
			buildFishChowder(),
			buildMinnestrone(),
			buildPastaFazul(),
			buildTofuSoup(),
			buildVegetableSoup()
		);
	}
    
	abstract protected String buildSoupBuffetName();

	protected ChickenSoup buildChickenSoup() {
		return new ChickenSoup();
	}
	protected ClamChowder buildClamChowder() {
		return  new ClamChowder();
	}
	protected FishChowder buildFishChowder() {
		return new FishChowder();
	}
	protected Minnestrone buildMinnestrone() {
		return new Minnestrone();
	}
	protected PastaFazul buildPastaFazul() {
		return new PastaFazul();
	}
	protected TofuSoup buildTofuSoup() {
		return new TofuSoup();
	}
	protected VegetableSoup buildVegetableSoup() {
		return new VegetableSoup();
	}
}
