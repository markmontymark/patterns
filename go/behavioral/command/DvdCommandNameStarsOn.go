package command


//DvdCommandNameStarsOn - one of two Concrete Commands

type DvdCommandNameStarsOn struct {
   dvdName *DvdName
}
    
func NewDvdCommandNameStarsOn(dvdNameIn *DvdName) *DvdCommandNameStarsOn {
	return &DvdCommandNameStarsOn{ dvdNameIn }
}    

func (this *DvdCommandNameStarsOn) execute () {
	 this.dvdName.SetNameStarsOn()
} 
