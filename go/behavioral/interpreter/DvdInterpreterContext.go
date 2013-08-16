package interpreter

import (
	"strings"
	"sort"
	"../../lib/stringslice"
)

//type StringSlice []string
//func (p StringSlice) Len() int { return len(p) }
//func (p StringSlice) Less(i, j int) bool { return p[i] < p[j] }
//func (p StringSlice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

type DvdInterpreterContext struct {
   titles map[string]string
   actors map[string]string
   titlesAndActors []*TitleAndActor
}

func NewDvdInterpreterContext () *DvdInterpreterContext {
	obj := new(DvdInterpreterContext)
	obj.titles = make(map[string]string)
	obj.actors = make(map[string]string)
	obj.titlesAndActors = make([]*TitleAndActor,0)
	return obj
}

func (this *DvdInterpreterContext) AddTitleAndActor(ta *TitleAndActor) {
	this.titlesAndActors = append(this.titlesAndActors,ta)
	this.titles[ strings.ToLower(ta.GetTitle())] = ta.GetTitle()
	this.actors[ strings.ToLower(ta.GetActor())] = ta.GetActor()
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
		if titleIn == ta.GetTitle() {
			retval = append(retval, ta.GetActor())
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
		if actorIn == ta.GetActor() {
			retval = append(retval,ta.GetTitle())
		}
	}
	sort.Sort(stringslice.StringSlice(retval))
	return retval;
}



