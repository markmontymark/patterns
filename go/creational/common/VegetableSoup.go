package common

func NewVegetableSoup() *SoupImpl {
   obj := new(SoupImpl)
   obj.soupName = "Vegetable Soup"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 cup bullion")    
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup carrots")         
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup potatoes")         
	return obj
}
