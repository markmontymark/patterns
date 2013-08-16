

//DvdStateName - the State interface

package state

type DvdStateName interface {  
	ShowName( ctx *DvdStateContext , nameIn string ) string
}
