//HonoluluSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods


package factorymethod



public class HonoluluSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public string makeBuffetName() {
        return "Honolulu Soup Buffet"
    }
    public ClamChowder makeClamChowder() {
        return new HonoluluClamChowder()
    }
    public FishChowder makeFishChowder() {
        return new HonoluluFishChowder()
    }
}
