//BostonSoupFactoryMethodSubclass.java - One of Two Subclass Factory Methods

namespace Creational.Factory_Method {

using common;

public class BostonSoupFactoryMethodSubclass : SoupFactoryMethod {
    public new string makeBuffetName() {
        return "Boston Soup Buffet";
    }
    public new ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    public new FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}

}
