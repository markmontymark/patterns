
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Observer (aka Dependents & Publish-Subscribe) Overview
//An object notifies other object(s) if it changes.
//DvdReleaseByCategory - the subject
//(the class which is observed)


package observer

import (
	"strings"
)


type DvdReleaseByCategory struct {  
   CategoryName string
   subscribers []*DvdSubscriber
   releases []*DvdRelease
}

   
func NewDvdReleaseByCategory(categoryNameIn string) *DvdReleaseByCategory {
	obj := new(DvdReleaseByCategory)
	obj.CategoryName = categoryNameIn
	obj.subscribers = make([]*DvdSubscriber,0)
	obj.releases    = make([]*DvdRelease,0)
	return obj
}

func (this *DvdReleaseByCategory) AddSubscriber( s *DvdSubscriber) {
	 this.subscribers = append(this.subscribers, s)
}

func (this *DvdReleaseByCategory) RemoveSubscriber (s *DvdSubscriber ) bool {
	foundI := -1
	for i,this_s := range this.subscribers {
		if this_s == s {
			foundI = i
			break
		}
	}
	if foundI == -1 {
		return false
	}
	this.subscribers[foundI] = this.subscribers[len(this.subscribers)-1]
	this.subscribers = this.subscribers[:len(this.subscribers)-1]
   return true
}

func (this *DvdReleaseByCategory) NewDvdRelease( r *DvdRelease ) string {
	 this.releases = append(this.releases, r)
	 return this.notifySubscribersOfNewDvd(r)
}

func (this *DvdReleaseByCategory) UpdateDvd( r *DvdRelease ) string {
	dvdUpdated := false
	
	 for _,this_r := range this.releases {
		  if r.SerialNumber == this_r.SerialNumber {
				this_r.UpdateDvdReleaseWithObj( r )
				dvdUpdated = true
				break
		  }
	 }
	 if dvdUpdated {
		  return this.notifySubscribersOfUpdate(r)
	 }
	return this.NewDvdRelease(r)
}

func (this *DvdReleaseByCategory) notifySubscribersOfNewDvd( r *DvdRelease ) string {
	retval := make([]string,0)	
	for _,s := range this.subscribers {
		retval = append(retval, s.NewDvdRelease( r, this.CategoryName ) )
	}
	return strings.Join(retval,"\n")
}

func (this *DvdReleaseByCategory) notifySubscribersOfUpdate( r *DvdRelease ) string {
	retval := make([]string,0)	
	for _,s := range this.subscribers {
		retval = append(retval, s.UpdateDvdRelease( r, this.CategoryName ) )
	}       
	return strings.Join(retval,"\n")
}
