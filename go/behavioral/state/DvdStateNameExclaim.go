

//DvdStateNameExclaim.java - one of two Concrete States

package state

import (
	"strings"
)

type DvdStateNameExclaim struct { // implements DvdStateName
}

func (this *DvdStateNameExclaim) ShowName( ctx *DvdStateContext , nameIn string ) string  {
	retval := strings.Replace( nameIn, " ", "!", 1 )
	ctx.Name = new(DvdStateNameStars)
	return retval
}
