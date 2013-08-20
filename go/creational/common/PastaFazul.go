package common

func NewPastaFazul() *SoupImpl {
   obj := new(SoupImpl)
   obj.soupName = "Pasta Fazul"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound tomatos")
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup pasta")    
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup diced carrots")          
	obj.soupIngredients = append( obj.soupIngredients, "1 cup tomato juice")             
	return obj
}
