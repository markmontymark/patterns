//Soup.java - A helper class


namespace common {

using System.Collections.Generic;

abstract public class Soup 
{
   protected List<string> soupIngredients = new List<string>();    
   protected string soupName;
   
   public string getSoupName()
   {
       return soupName;
   }
   
   override public string ToString()
   {
        List<string> stringOfIngredients = new List<string>();
			stringOfIngredients.Add(soupName);
        stringOfIngredients.Add(" Ingredients: ");
        foreach (string ing in soupIngredients )
        {
            stringOfIngredients.Add( ing );
        }
        return string.Join(", ",stringOfIngredients.ToArray());
   }
}

}        
