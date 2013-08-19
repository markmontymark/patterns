package adapter

//LooseLeafTea - the adaptee

type LooseLeafTea struct {  
   TeaIsSteeped bool
}

func NewLooseLeafTea() * LooseLeafTea {
	obj := new(LooseLeafTea)
	obj.TeaIsSteeped = false
	return obj
}
    
func (this *LooseLeafTea) SteepTea() {
	this.TeaIsSteeped = true
}
