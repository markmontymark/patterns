package facade

//FacadeTeaCup - one of three classes the facade calls

type FacadeTeaCup struct {  
   teaBagIsSteeped bool
   facadeWater *FacadeWater
   facadeTeaBag *FacadeTeaBag
}


func NewFacadeTeaCup() *FacadeTeaCup {
	obj  := new(FacadeTeaCup)
	obj.teaBagIsSteeped = false
	return obj
}    
   
func (this *FacadeTeaCup) setTeaBagIsSteeped(isTeaBagSteeped bool) {
	 this.teaBagIsSteeped = isTeaBagSteeped
}
func (this *FacadeTeaCup) getTeaBagIsSteeped() bool {
	 return this.teaBagIsSteeped
}
 
func (this *FacadeTeaCup) AddFacadeTeaBag( ftb *FacadeTeaBag ) {
	 this.facadeTeaBag = ftb
}

func (this *FacadeTeaCup) AddFacadeWater( fw *FacadeWater ) {
	 this.facadeWater = fw
}   

func (this *FacadeTeaCup) SteepTeaBag() {
	 if this.facadeTeaBag != nil && this.facadeWater  != nil && this.facadeWater.IsWaterBoiling() {
		 this.setTeaBagIsSteeped(true)
	 } else {
		 this.setTeaBagIsSteeped(false)
	 }           
}

func (this *FacadeTeaCup) ToString() string {
	if this.getTeaBagIsSteeped() {
		return "A nice cuppa tea!"
	} 

	retval := "A cup with "
	if this.facadeWater != nil {
		if this.facadeWater.IsWaterBoiling() {
			retval += "boiling water "
		} else {
			retval += "cold water "
		}
	} else {
		retval += "no water "
	}

	if this.facadeTeaBag != nil {
		retval += "and a tea bag"
	} else {
		retval += "and no tea bag"
	} 
	return retval
		
}
