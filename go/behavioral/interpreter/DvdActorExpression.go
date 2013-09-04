package interpreter

import "strings"


type DvdActorExpression struct { } // implements Interpretable

func NewDvdActorExpression () *DvdActorExpression {
	return &DvdActorExpression{}
}

func (this *DvdActorExpression) Interpret (ctx *DvdInterpreterContext) string {
	return strings.Join( ctx.GetAllActors(), ", ")
}
