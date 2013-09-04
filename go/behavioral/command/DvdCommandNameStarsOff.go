
package command


//DvdCommandNameStarsOff - two of two Concrete Commands

type DvdCommandNameStarsOff struct {
   dvdName *DvdName
}
    
func NewDvdCommandNameStarsOff(dvdNameIn *DvdName) *DvdCommandNameStarsOff {
	return &DvdCommandNameStarsOff{ dvdNameIn }
}    

func (this *DvdCommandNameStarsOff) execute () {
	 this.dvdName.SetNameStarsOff()
} 
