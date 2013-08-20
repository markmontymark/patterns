package common

func NewBostonFishChowder() *SoupImpl {
   obj := new(SoupImpl)
	obj.soupName = "ScrodFishChowder"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound Fresh Scrod")
	obj.soupIngredients = append( obj.soupIngredients, "1 cup corn")
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup heavy cream")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup butter")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup potato chips")
	return obj
}
