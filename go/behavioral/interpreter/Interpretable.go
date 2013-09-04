package interpreter


//DvdAbstractExpression - The Abstract Expression

type Interpretable interface {
   Interpret( ctx *DvdInterpreterContext) string
}
