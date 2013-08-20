package common;

func NewHonoluluFishChowder() *SoupImpl {
   obj := new(SoupImpl)
	obj.soupName = "OpakapakaFishChowder"
   obj.soupIngredients = make([]string,0)
	obj.soupIngredients = append( obj.soupIngredients, "1 Pound Fresh Opakapaka Fish")
	obj.soupIngredients = append( obj.soupIngredients, "1 cup pineapple chunks")
	obj.soupIngredients = append( obj.soupIngredients, "1/2 cup coconut milk")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup SPAM")
	obj.soupIngredients = append( obj.soupIngredients, "1/4 cup taro chips")
  	return obj 
}
