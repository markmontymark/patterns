package adapter

type Steeper struct {
	TeaIsSteeped bool
}

func (this *Steeper) SteepTea () {
	this.TeaIsSteeped = true
}

