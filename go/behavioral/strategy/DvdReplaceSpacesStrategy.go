
package strategy


import (
	"strings"
)

type DvdReplaceSpacesStrategy struct {} // implements DvdNameStrategy 

func (this *DvdReplaceSpacesStrategy) FormatDvdName(dvdName string, args ...interface{}) string {
	charIn := args[0].(string)
	return strings.Replace(dvdName," ", charIn,-1)
}
