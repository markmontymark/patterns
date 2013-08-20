package common

func NewFishChowder() *SoupImpl {
   obj := new(SoupImpl)
   obj.soupName = "FishChowder"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound Fresh fish")
	obj.soupIngredients = append( obj.soupIngredients, "1 cup fruit or vegetables")    
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup milk")      
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup butter")    
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup chips")          
  	return obj 
}
