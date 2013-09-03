package prototype


type Namer struct { //implements Nameable
	name string
}

func (this *Namer) SetName (name string) {
	this.name = name
}

func (this *Namer) GetName () string {
	return this.name
}
