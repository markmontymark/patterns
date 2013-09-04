
package interpreter

import (
	"strings"
)

type DvdActorTitleExpression struct { // implements Interpretable.go
   actor string
}

func NewDvdActorTitleExpression(actor string) *DvdActorTitleExpression {
	return &DvdActorTitleExpression{ actor }
}
    
func (this *DvdActorTitleExpression) Interpret (ctx *DvdInterpreterContext) string {
	if this.actor == "" {
		return ""
	}
	return strings.Join(ctx.GetActorsForTitle( this.actor ),", ")
}
