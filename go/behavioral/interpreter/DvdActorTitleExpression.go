
package interpreter

import (
	"strings"
)

type DvdActorTitleExpression struct {
   actor string
}

func NewDvdActorTitleExpression(actor string) *DvdActorTitleExpression {
	obj := new(DvdActorTitleExpression)
	obj.actor = actor
	return obj
}
    
func (this *DvdActorTitleExpression) Interpret (ctx *DvdInterpreterContext) string {
	if this.actor == "" {
		return ""
	}
   actors := ctx.GetActorsForTitle( this.actor )
	return strings.Join(actors,", ")
}
