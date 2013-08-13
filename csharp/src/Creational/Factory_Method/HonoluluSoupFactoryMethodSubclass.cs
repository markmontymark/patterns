//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods


namespace Creational.Factory_Method {

using common;

public class HonoluluSoupFactoryMethodSubclass : SoupFactoryMethod {
    override public string makeBuffetName() {
        return "Honolulu Soup Buffet";
    }
    override public ClamChowder makeClamChowder() {
        return new HonoluluClamChowder();
    }
    override public FishChowder makeFishChowder() {
        return new HonoluluFishChowder();
    }
}

}
