

//DvdStateNameStars - two of two Concrete States

package state

import (
	"strings"
)

type DvdStateNameStars struct { // implements DvdStateName
	starCount int
}

func (this *DvdStateNameStars) ShowName ( ctx *DvdStateContext , nameIn string ) string  {
	this.starCount++
	retval := strings.Replace(nameIn, " ","*",this.starCount )
	if this.starCount > 1 {
		ctx.Name = new(DvdStateNameExclaim)
	}
	return retval
}
