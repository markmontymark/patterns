package interpreter


//DvdAbstractExpression - The Abstract Expression

type DvdAbstractExpression interface {
   Interpret( ctx *DvdInterpreterContext) string
}
