package flyweight


//TeaFlavorFactory - the Factory

type TeaFlavorFactory struct {  
   flavors []*TeaFlavor
     //no more than 10 flavors can be made
   teasMade int
}

func NewTeaFlavorFactory() *TeaFlavorFactory {
	obj := new(TeaFlavorFactory)
	obj.flavors = make([]*TeaFlavor,0)
	obj.teasMade = 0
	return obj
}
   
func (this *TeaFlavorFactory) GetTeaFlavor(flavorToGet string) *TeaFlavor {
       if this.teasMade > 0 {
           for i := 0 ; i < this.teasMade; i++ {
               if flavorToGet == this.flavors[i].GetFlavor() {
                   return this.flavors[i]
               }
           }
       }
       this.flavors = append(this.flavors, NewTeaFlavor(flavorToGet) )
		this.teasMade += 1
       return this.flavors[this.teasMade - 1]
}
   
func (this *TeaFlavorFactory) GetTotalTeaFlavorsMade() int {
	return this.teasMade
}
