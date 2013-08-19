package flyweight

import (
	"fmt"
)


type TeaFlavor struct {   // implements TeaOrder
    teaFlavor string
}
   
func NewTeaFlavor(teaFlavor string) *TeaFlavor {
	obj := new(TeaFlavor)
	obj.teaFlavor = teaFlavor
	return obj
}
   
func (this *TeaFlavor) GetFlavor() string {
	return this.teaFlavor
}
   
func (this *TeaFlavor) ServeTea(ctx *TeaOrderContext ) string {
	return  fmt.Sprintf("Serving tea flavor %s to table number %d", this.teaFlavor, ctx.GetTable())
}
