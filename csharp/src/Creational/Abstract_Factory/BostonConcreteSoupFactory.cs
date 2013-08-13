//BostonConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory

namespace Creational.Abstract_Factory {


using common;

public class BostonConcreteSoupFactory : AbstractSoupFactory {
    public BostonConcreteSoupFactory() {
        factoryLocation = "Boston";
    }
    public new ClamChowder makeClamChowder() {
        return new BostonClamChowder();
    }
    public new FishChowder makeFishChowder() {
        return new BostonFishChowder();
    }
}

}
