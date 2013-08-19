package decorator

import (
	"strings"
)


type ChaiDecorator struct {
    teaToMakeChai Tea
    chaiIngredients []string
}

func NewChaiDecorator( teaToMakeChai Tea ) *ChaiDecorator {
	obj := new(ChaiDecorator)
	obj.teaToMakeChai = teaToMakeChai
	obj.chaiIngredients = make([]string,0);
	obj.chaiIngredients = append(obj.chaiIngredients,"bay leaf")
	obj.chaiIngredients = append(obj.chaiIngredients,"cinnamon stick")
	obj.chaiIngredients = append(obj.chaiIngredients,"ginger")
	obj.chaiIngredients = append(obj.chaiIngredients,"honey")
	obj.chaiIngredients = append(obj.chaiIngredients,"soy milk")
	obj.chaiIngredients = append(obj.chaiIngredients,"vanilla bean")
	return obj
}

func (this *ChaiDecorator) SteepTea() string {
	return this.steepChai()
}

func (this *ChaiDecorator) steepChai() string {
	return this.teaToMakeChai.SteepTea() + this.steepChaiIngredients()
}    
    
func (this *ChaiDecorator) steepChaiIngredients() string {
	retval := make([]string,0)
	for _,v:= range this.chaiIngredients {
		retval = append( retval, v + " is steeping" )
	}
	return strings.Join(retval,", ")
}
