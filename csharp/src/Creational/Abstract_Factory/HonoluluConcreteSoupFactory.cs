//HonoluluConcreteSoupFactory.java - Two of Two concrete factories extending the abstract factory

namespace Creational.Abstract_Factory {

using common;

public class HonoluluConcreteSoupFactory : AbstractSoupFactory {
    public HonoluluConcreteSoupFactory() {
        factoryLocation = "Honolulu";
    }
    public new ClamChowder makeClamChowder() {
       return new HonoluluClamChowder();
    }
    public new FishChowder makeFishChowder() {
       return new HonoluluFishChowder();
    }
}

}
