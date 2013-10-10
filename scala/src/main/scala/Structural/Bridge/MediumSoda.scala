package Structural.Bridge;


//MediumSoda - one of two classes extending the Abstract

import java.util.*;
import org.apache.commons.lang3.StringUtils;

class MediumSoda extends Soda {  
   MediumSoda() {
       setSodaImp();
   }
   
   String pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
		 List retval = new ArrayList();
       for (int i = 0; i < 2; i++) {
           retval.add("...glug...");
           retval.add(sodaImp.pourSodaImp());
       }
			
		 return StringUtils.join(retval, " ");
   }
}
