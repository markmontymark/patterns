package observer

import (
	"fmt"
)

type DvdSubscriber struct {  
   Name string
}

func NewDvdSubscriber(name string) *DvdSubscriber {
	obj := new(DvdSubscriber)
	obj.Name = name 
	return obj
}

func (this *DvdSubscriber) NewDvdRelease(rel *DvdRelease , subname string) string {
	return fmt.Sprintf("Hello %s, subscriber to the %s DVD release list.\n" +
		"The new Dvd %s will be released on %d/%d/%d.",
			this.Name, subname, rel.DvdName, rel.Month, rel.Day, rel.Year )

}
   
func (this *DvdSubscriber ) UpdateDvdRelease (rel *DvdRelease , subscriptionListName string) string {
	return fmt.Sprintf("Hello %s, subscriber to the %s DVD release list.\n"  +
		"The following DVDs release has been revised: %s will be released on %d/%d/%d." ,
			this.Name, subscriptionListName, rel.DvdName, rel.Month , rel.Day , rel.Year)
}
