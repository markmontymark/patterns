package Patterns::Creational::Factory_Method;


//BostonSoupFactoryMethodSubclass.java - One of Two Subclass Factory Methods

class BostonSoupFactoryMethodSubclass extends SoupFactoryMethod {
    public String makeBuffetName() {
        return "Boston Soup Buffet";
    }
    public ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    public FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}