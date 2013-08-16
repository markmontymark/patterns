package interpreter

import (
	"strings"
)

type DvdTitleActorExpression struct {
   title string
}

func NewDvdTitleActorExpression(title string) *DvdTitleActorExpression {
	obj := new(DvdTitleActorExpression)
	obj.title = title
	return obj
}
    
func (this *DvdTitleActorExpression) Interpret (ctx *DvdInterpreterContext) string {
	if this.title == "" {
		return ""
	}
   titlesAndActors := ctx.GetTitlesForActor( this.title )
	return strings.Join(titlesAndActors,", ")
}
