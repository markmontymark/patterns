//SuperSizeSoda - two of two classes extending the Abstract


package bridge

import java.util.*
import org.apache.commons.lang3.stringUtils

public class SuperSizeSoda extends Soda {  
   public SuperSizeSoda() {
       setSodaImp()
   }
   
   public string pourSoda() {
       SodaImp sodaImp = this.getSodaImp()
		List retval = new ArrayList()
       for (int i = 0 i < 5; i++) {
           retval.add("...glug...")
           retval.add(sodaImp.pourSodaImp())
       }
       return stringUtils.join(retval, " ")
   }
}
