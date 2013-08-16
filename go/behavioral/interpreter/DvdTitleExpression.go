
package interpreter

import "strings"


type DvdTitleExpression struct {

}

func NewDvdTitleExpression () *DvdTitleExpression {
	obj := new(DvdTitleExpression)
	return obj
}


func (this *DvdTitleExpression) Interpret (ctx *DvdInterpreterContext) string {
	titles := ctx.GetAllTitles()
	return strings.Join( titles, ", ")
}
