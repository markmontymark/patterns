//MediumSoda.java - one of two classes extending the Abstract

namespace Structural.Bridge {



using System;
using System.Collections.Generic;


public class MediumSoda : Soda {  
   public MediumSoda() {
       setSodaImp();
   }
   
   override public string pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
		List<string> retval = new List<string>();
       for (int i = 0; i < 2; i++) {
           retval.Add("...glug...");
           retval.Add( sodaImp.pourSodaImp()) ;
       }
		return string.Join(" ",retval.ToArray() );
   }
}

}
