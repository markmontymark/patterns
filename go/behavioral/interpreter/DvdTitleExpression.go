
package interpreter

import "strings"

type DvdTitleExpression struct {} // implements Interpretable

func NewDvdTitleExpression () *DvdTitleExpression {
	return &DvdTitleExpression{}
}

func (this *DvdTitleExpression) Interpret (ctx *DvdInterpreterContext) string {
	return strings.Join( ctx.GetAllTitles() , ", ")
}
