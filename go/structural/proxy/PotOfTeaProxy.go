package proxy


//PotOfTeaProxy - the Proxy

type PotOfTeaProxy struct {} //implements PotOfTeaInterface {  
    
func (this *PotOfTeaProxy) PourTea() string {
	 potOfTea := new(PotOfTea)
	 return potOfTea.PourTea()
}
