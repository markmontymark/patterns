//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods


namespace Creational.Factory_Method {

using common;

public class HonoluluSoupFactoryMethodSubclass : SoupFactoryMethod {
    public new string makeBuffetName() {
        return "Honolulu Soup Buffet";
    }
    public new ClamChowder makeClamChowder() {
        return new HonoluluClamChowder();
    }
    public new FishChowder makeFishChowder() {
        return new HonoluluFishChowder();
    }
}

}
