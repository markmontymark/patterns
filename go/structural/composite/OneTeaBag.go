package composite


//OneTeaBag - one composite extension - the "leaf"

type OneTeaBag struct { 
	Teabags *TeaBagsAbstract
}

func NewOneTeaBag( nameIn string ) *OneTeaBag {
	obj := new(OneTeaBag)
	obj.Teabags = new(TeaBagsAbstract)	
	obj.Teabags.SetName(nameIn)
	return obj
}

func (this *OneTeaBag) CountTeaBags() int {
	return 1
}

func (this *OneTeaBag) Add( tb TeaBagsInterface) bool {
	return false
}
func (this *OneTeaBag) Remove( tb TeaBagsInterface) bool {
	return false
}

func (this *OneTeaBag) SetParent(parentIn *TeaBagsInterface ) {
   this.Teabags.SetParent( parentIn )
}

func (this *OneTeaBag) GetParent() *TeaBagsInterface {
   return this.Teabags.GetParent()
}

func (this *OneTeaBag) SetName(nameIn string) {
   this.Teabags.SetName( nameIn )
}

func (this *OneTeaBag) GetName() string {
   return this.Teabags.GetName()
}

