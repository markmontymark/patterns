package proxy


//PotOfTea - the Real Subject

type PotOfTea struct {} //implements PotOfTeaInterface {  
   
func (this *PotOfTea) PourTea() string {
	return "Pouring tea"
}
