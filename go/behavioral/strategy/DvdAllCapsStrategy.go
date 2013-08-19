package strategy

import (
	"strings"
)

type DvdAllCapsStrategy struct {} // implements DvdNameStrategy
func (this *DvdAllCapsStrategy) FormatDvdName(dvdName string , args ...interface{}) string {
	return strings.ToUpper(dvdName)
}
