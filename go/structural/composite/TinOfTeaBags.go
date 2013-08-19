package composite


//TinOfTeaBags - one composite extension - the "node"

type TinOfTeaBags struct {
	Teabags *TeaBagsAbstract
}

func NewTinOfTeaBags( nameIn string ) *TinOfTeaBags {  
	obj := new(TinOfTeaBags)
	obj.Teabags = new(TeaBagsAbstract)
	obj.Teabags.SetName(nameIn)
	obj.Teabags.TeabagsList = make([]TeaBagsInterface,0)
	return obj
}
   
func (this *TinOfTeaBags) CountTeaBags() int {
	totalTeaBags := 0
	if this.Teabags.TeabagsList != nil {
		for _,v := range this.Teabags.TeabagsList {
			totalTeaBags += v.CountTeaBags()
		}
	}
	return totalTeaBags
}
   
func (this *TinOfTeaBags) Add( tb TeaBagsInterface) bool {
	//tb.SetParent( this)
	this.Teabags.TeabagsList = append( this.Teabags.TeabagsList, tb)
	return true
}
   
func (this *TinOfTeaBags) Remove( tb TeaBagsInterface) bool {
   foundI := -1
   for i, v := range this.Teabags.TeabagsList {
      if tb == v {
         foundI = i
         break;
      }
   }
   if foundI != -1 {
      this.Teabags.TeabagsList[foundI] = this.Teabags.TeabagsList[len(this.Teabags.TeabagsList)-1]
      this.Teabags.TeabagsList = this.Teabags.TeabagsList[:len(this.Teabags.TeabagsList)-1]
      return true
   }
   return false
}

func (this *TinOfTeaBags) SetParent(parentIn *TeaBagsInterface ) {
   this.Teabags.SetParent(parentIn)
}

func (this *TinOfTeaBags) GetParent() *TeaBagsInterface {
   return this.Teabags.GetParent()
}

func (this *TinOfTeaBags) SetName(nameIn string) {
   this.Teabags.SetName(nameIn )
}

func (this *TinOfTeaBags) GetName() string {
   return this.Teabags.GetName()
}


