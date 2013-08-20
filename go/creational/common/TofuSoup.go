package common

func NewTofuSoup() *SoupImpl {
   obj := new(SoupImpl)
   obj.soupName = "Tofu Soup"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound tofu")
	obj.soupIngredients = append( obj.soupIngredients, "1 cup carrot juice")    
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup spirolena")         
	return obj
}

