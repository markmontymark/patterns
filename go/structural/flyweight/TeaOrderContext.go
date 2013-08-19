package flyweight


type TeaOrderContext struct {  
   tableNumber int
}

func NewTeaOrderContext(tableNumber int) *TeaOrderContext {
	obj := new(TeaOrderContext)
	obj.tableNumber = tableNumber	
	return obj
}
   
func (this *TeaOrderContext) GetTable() int {
	return this.tableNumber
}
