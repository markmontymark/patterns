package interpreter

import "strings"


type DvdActorExpression struct {

}

func NewDvdActorExpression () *DvdActorExpression {
	obj := new(DvdActorExpression)
	return obj
}


func (this *DvdActorExpression) Interpret (ctx *DvdInterpreterContext) string {
	actors := ctx.GetAllActors()
	return strings.Join( actors, ", ")
}
