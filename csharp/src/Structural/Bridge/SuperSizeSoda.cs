//SuperSizeSoda.java - two of two classes extending the Abstract


namespace Structural.Bridge {



using System;
using System.Collections.Generic;


public class SuperSizeSoda : Soda {  
   public SuperSizeSoda() {
       setSodaImp();
   }
   
   override public string pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
		List<string> retval = new List<string>();
       for (int i = 0; i < 5; i++) {
           retval.Add("...glug...");
				retval.Add( sodaImp.pourSodaImp() );
       }
		return string.Join(" ",retval.ToArray());
   }
}

}
