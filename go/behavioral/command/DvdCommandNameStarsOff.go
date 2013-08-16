
package command


//DvdCommandNameStarsOff.java - two of two Concrete Commands

type DvdCommandNameStarsOff struct {
   dvdName *DvdName
}
    
func NewDvdCommandNameStarsOff(dvdNameIn *DvdName) *DvdCommandNameStarsOff {
	_obj := new(DvdCommandNameStarsOff)
	_obj.dvdName = dvdNameIn
	return _obj
}    

func (this *DvdCommandNameStarsOff) execute () {
	 this.dvdName.SetNameStarsOff()
} 
