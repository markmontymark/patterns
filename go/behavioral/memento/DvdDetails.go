
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Memento
//Memento (aka Token) Overview
//One object stores another objects state.
//DvdDetails - the Originator
//(the class to be backed up)
//Contains the inner class DvdMemento - the Memento



package memento

import (
	"strings"
)

type DvdDetails struct {  
   titleName string 
   stars []string
   encodingRegion string
}

func NewDvdDetails ( titleName string, stars []string, encodingRegion string) *DvdDetails {
	obj := new(DvdDetails)
	obj.titleName = titleName 
	obj.stars = stars
   obj.encodingRegion = encodingRegion
	return obj
}    
  
func (this *DvdDetails) setTitleName(titleNameIn string) {
	this.titleName = titleNameIn
}
func (this *DvdDetails) getTitleName() string {
	return this.titleName
}
   
func (this *DvdDetails) setStars(starsIn []string) {
	this.stars = starsIn
}
func (this *DvdDetails) AddStar(starIn string) {
	this.stars = append(this.stars, starIn)
}
func (this *DvdDetails) getStars() []string {
	return this.stars
}
func (this *DvdDetails) getStarsString(starsIn[]string) string {
	return strings.Join( starsIn, ", ")
} 
   
func (this *DvdDetails) setEncodingRegion(encodingRegionIn string) {
	this.encodingRegion = encodingRegionIn
}

func (this *DvdDetails) getEncodingRegion() string {
	return this.encodingRegion
}  
   
func (this *DvdDetails) FormatDvdDetails() string {
       return "DVD: " + this.getTitleName() + ", starring: " + this.getStarsString(this.getStars()) + ", encoding region: " + this.getEncodingRegion()
}   
   
//sets current state to what DvdMemento has
func (this *DvdDetails) SetDvdMemento(dvdMementoIn *DvdMemento) {
    dvdMementoIn.getState(this)
}

//save current state of DvdDetails in a DvdMemento
func (this *DvdDetails) CreateDvdMemento() *DvdMemento {
	 memento := NewDvdMemento(this)
	 return memento
}
   
//an inner class for the memento
type DvdMemento struct {
	state *DvdDetails
}

func NewDvdMemento(objToSave *DvdDetails) *DvdMemento {
	obj := new(DvdMemento)
	obj.state = NewDvdDetails(objToSave.getTitleName(), objToSave.getStars(),objToSave.getEncodingRegion() )
	return obj
}

//resets DvdDetails to DvdMementoData
func (this *DvdMemento) getState(obj *DvdDetails) {
	obj.setTitleName(this.state.getTitleName())
	obj.setStars(this.state.getStars() )
	obj.setEncodingRegion(this.state.getEncodingRegion())  
}    
       
//only useful for testing
func (this *DvdMemento) ShowMemento() string {
return "DVD: " + this.state.getTitleName() + 
	", starring: " + this.state.getStarsString(this.state.getStars()) + 
	", encoding region: " + this.state.getEncodingRegion() 
}
