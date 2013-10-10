//SuperSizeSoda - two of two classes extending the Abstract


package Structural.Bridge;

import java.util.*;
import org.apache.commons.lang3.StringUtils;

class SuperSizeSoda extends Soda {  
   SuperSizeSoda() {
       setSodaImp();
   }
   
   String pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
		List retval = new ArrayList();
       for (int i = 0; i < 5; i++) {
           retval.add("...glug...");
           retval.add(sodaImp.pourSodaImp());
       }
       return StringUtils.join(retval, " ");
   }
}
