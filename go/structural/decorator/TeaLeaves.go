package decorator


type TeaLeaves struct {
	teaIsSteeped bool
}

func NewTeaLeaves() *TeaLeaves {
	obj := new(TeaLeaves)
	obj.teaIsSteeped = false
	return obj
}


func (this *TeaLeaves) SteepTea() string {
	this.teaIsSteeped = true
	return "tea leaves are steeping"
}
