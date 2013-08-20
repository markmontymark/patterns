package common


//type ChickenSoup struct {} //extends Soup

func NewChickenSoup() *SoupImpl {
	obj := new(SoupImpl)
	obj.soupName = "ChickenSoup"
	obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound diced chicken")
	obj.soupIngredients = append( obj.soupIngredients,"1/2 cup rice")    
	obj.soupIngredients = append( obj.soupIngredients,"1 cup bullion")      
	obj.soupIngredients = append( obj.soupIngredients,"1/16 cup butter")    
	obj.soupIngredients = append( obj.soupIngredients,"1/4 cup diced carrots")          
	return obj
}   
