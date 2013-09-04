package interpreter

import (
	"strings"
)

type DvdTitleActorExpression struct { // implements Interpretable
   title string
}

func NewDvdTitleActorExpression(title string) *DvdTitleActorExpression {
	return &DvdTitleActorExpression{ title }
}
    
func (this *DvdTitleActorExpression) Interpret (ctx *DvdInterpreterContext) string {
	if this.title == "" {
		return ""
	}
	return strings.Join(ctx.GetTitlesForActor( this.title ),", ")
}
