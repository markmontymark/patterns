package Structural.Bridge;


//MediumSoda.java - one of two classes extending the Abstract

import java.util.*;
import org.apache.commons.lang3.StringUtils;

public class MediumSoda extends Soda {  
   public MediumSoda() {
       setSodaImp();
   }
   
   public String pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
		 List retval = new ArrayList();
       for (int i = 0; i < 2; i++) {
           retval.add("...glug...");
           retval.add(sodaImp.pourSodaImp());
       }
			
		 return StringUtils.join(retval, " ");
   }
}
