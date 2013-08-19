package facade


type FacadeWater  struct {  
	waterIsBoiling bool
}
   
func NewFacadeWater() *FacadeWater {
	obj := new(FacadeWater)
	obj.waterIsBoiling = false
	return obj
} 

func (this *FacadeWater) BoilFacadeWater() {
	this.waterIsBoiling = true
}
   
func (this *FacadeWater) IsWaterBoiling() bool {
	return this.waterIsBoiling
}
