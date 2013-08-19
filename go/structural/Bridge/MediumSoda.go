package bridge


//MediumSoda - one of two classes extending the Abstract

import java.util.*
import org.apache.commons.lang3.stringUtils

public class MediumSoda extends Soda {  
   public MediumSoda() {
       setSodaImp()
   }
   
   public string pourSoda() {
       SodaImp sodaImp = this.getSodaImp()
		 List retval = new ArrayList()
       for (int i = 0 i < 2; i++) {
           retval.add("...glug...")
           retval.add(sodaImp.pourSodaImp())
       }
			
		 return stringUtils.join(retval, " ")
   }
}
