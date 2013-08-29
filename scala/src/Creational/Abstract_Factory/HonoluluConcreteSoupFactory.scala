//HonoluluConcreteSoupFactory - Two of Two concrete factories extending the abstract factory

package Creational.Abstract_Factory;

import common.*;

public class HonoluluConcreteSoupFactory extends AbstractSoupFactory {
    public HonoluluConcreteSoupFactory() {
        factoryLocation = "Honolulu";
    }
    public ClamChowder makeClamChowder() {
       return new HonoluluClamChowder();
    }
    public FishChowder makeFishChowder() {
       return new HonoluluFishChowder();
    }
}
