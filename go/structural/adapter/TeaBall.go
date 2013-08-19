package adapter


//TeaBall - the adapter

type TeaBall struct {  
	llf *LooseLeafTea
	TeaBagIsSteeped bool
}

func NewTeaBall( llf *LooseLeafTea ) *TeaBall {
	obj := new(TeaBall)
	obj.llf = llf
	obj.TeaBagIsSteeped = llf.TeaIsSteeped
	return obj
}
	
func (this *TeaBall) SteepTeaInCup() {
	this.llf.SteepTea()
	this.TeaBagIsSteeped  = this.llf.TeaIsSteeped
}
