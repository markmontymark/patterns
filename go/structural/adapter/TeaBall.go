package adapter


//TeaBall - the adapter

type TeaBall struct {  
	llf *LooseLeafTea
	TeaBagIsSteeped bool
}

func NewTeaBall( llf *LooseLeafTea ) *TeaBall {
	return &TeaBall{ llf, llf.TeaIsSteeped }
}
	
func (this *TeaBall) SteepTeaInCup() {
	this.llf.SteepTea()
	this.TeaBagIsSteeped  = this.llf.TeaIsSteeped
}
