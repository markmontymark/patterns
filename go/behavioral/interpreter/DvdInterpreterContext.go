package interpreter

import (
	"strings"
	"sort"
	"../../lib/stringslice"
)

type DvdInterpreterContext struct {
   titles map[string]string
   actors map[string]string
   titlesAndActors []*TitleAndActor
}

func NewDvdInterpreterContext () *DvdInterpreterContext {
	return &DvdInterpreterContext{
		make(map[string]string),
		make(map[string]string),
		make([]*TitleAndActor,0),
	}
}

func (this *DvdInterpreterContext) AddTitleAndActor(ta *TitleAndActor) {
	this.titlesAndActors = append(this.titlesAndActors,ta)
	this.titles[ strings.ToLower(ta.Title)] = ta.Title
	this.actors[ strings.ToLower(ta.Actor)] = ta.Actor
}
   
func (this *DvdInterpreterContext) GetAllTitles() []string {
	retval := make([]string,0)
	for _, value := range this.titles {
		 retval = append(retval, value)
	}	
	sort.Sort(stringslice.StringSlice(retval))
	return retval
}

func (this *DvdInterpreterContext) GetAllActors() []string {
	retval := make([]string,0)
	for _, value := range this.actors {
		 retval = append(retval, value)
	}
	sort.Sort(stringslice.StringSlice(retval))
	return retval
}

func (this *DvdInterpreterContext) GetActorsForTitle(titleIn string) []string {
	retval := make([]string,0)
	if titleIn == "" {
		return retval
	}
	_, ok := this.titles[ strings.ToLower( titleIn ) ]
	if ! ok {
		return retval
	}
   for _,ta := range this.titlesAndActors {
		if titleIn == ta.Title {
			retval = append(retval, ta.Actor)
		}
	}
	sort.Sort(stringslice.StringSlice(retval))
	return retval;
}

func (this *DvdInterpreterContext) GetTitlesForActor(actorIn string) []string {
	retval := make([]string,0)
	_, ok := this.actors[ strings.ToLower( actorIn ) ]
	if ! ok {
		return retval
	}
   for _,ta := range this.titlesAndActors {
		if actorIn == ta.Actor {
			retval = append(retval,ta.Title)
		}
	}
	sort.Sort(stringslice.StringSlice(retval))
	return retval;
}

