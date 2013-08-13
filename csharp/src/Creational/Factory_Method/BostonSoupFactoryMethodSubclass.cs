//BostonSoupFactoryMethodSubclass.java - One of Two Subclass Factory Methods

namespace Creational.Factory_Method {

using common;

public class BostonSoupFactoryMethodSubclass : SoupFactoryMethod {
    override public string makeBuffetName() {
        return "Boston Soup Buffet";
    }
    override public ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    override public FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}

}
