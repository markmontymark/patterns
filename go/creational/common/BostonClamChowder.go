package common

func NewBostonClamChowder() *SoupImpl {
   obj := new(SoupImpl)
	obj.soupName = "QuahogChowder"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound Fresh Quahogs")
	obj.soupIngredients = append( obj.soupIngredients, "1 cup corn")
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup heavy cream")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup butter")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup potato chips")
	return obj
}
