package common

import (
	"strings"
)

type SoupImpl struct {
	soupName string
	soupIngredients []string
}

func (this *SoupImpl) GetSoupName () string {
	return this.soupName
}

func (this *SoupImpl) ToString () string {
	retval := make([]string,2)
	retval[0] = this.soupName
	retval[1] = "Ingredients: "
	for _,v := range this.soupIngredients {
		retval = append(retval,v)
	}
	return strings.Join(retval, ", ")
}
