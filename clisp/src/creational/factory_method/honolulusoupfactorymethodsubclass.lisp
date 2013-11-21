//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods


package Creational.Factory_Method;

import common.*;

public class HonoluluSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public String makeBuffetName() {
        return "Honolulu Soup Buffet";
    }
    public ClamChowder makeClamChowder() {
        return new HonoluluClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new HonoluluFishChowder();
    }
}
