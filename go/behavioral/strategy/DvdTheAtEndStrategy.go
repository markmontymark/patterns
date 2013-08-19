package strategy

import (
	"strings"
)

type DvdTheAtEndStrategy struct {} // implements DvdStrategy

func (this *DvdTheAtEndStrategy) FormatDvdName(dvdName string, args ...interface{}) string {
	 if strings.Index( dvdName,"The ") == 0 {
		  return dvdName[4:] + ", The"
	 } else if strings.Index( dvdName, "THE " ) == 0 {
		  return dvdName[4:] + ", THE"
	 } else if strings.Index( dvdName, "the ") == 0 {
		  return dvdName[4:] + ", the"
	 }         
	 return dvdName
}
