//Soup - A helper class


package common;

trait Soup 
{
   var soupIngredients : List[String]
   var soupName : String
   
   def getSoupName() : String = soupName
   
   def toString() : String = soupName + " Ingredients " + soupIngredients.join(", ")
}        
