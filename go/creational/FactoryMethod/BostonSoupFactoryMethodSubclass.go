//BostonSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod



public class BostonSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public string makeBuffetName() {
        return "Boston Soup Buffet"
    }
    public ClamChowder makeClamChowder() {
        return new BostonClamChowder()
    }
    public FishChowder makeFishChowder() {
        return new BostonFishChowder()
    }
}
