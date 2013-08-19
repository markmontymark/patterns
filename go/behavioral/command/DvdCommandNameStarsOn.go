package command


//DvdCommandNameStarsOn - one of two Concrete Commands

type DvdCommandNameStarsOn struct {
   dvdName *DvdName
}
    
func NewDvdCommandNameStarsOn(dvdNameIn *DvdName) *DvdCommandNameStarsOn {
	_obj := new(DvdCommandNameStarsOn)
	_obj.dvdName = dvdNameIn
	return _obj
}    

func (this *DvdCommandNameStarsOn) execute () {
	 this.dvdName.SetNameStarsOn()
} 
