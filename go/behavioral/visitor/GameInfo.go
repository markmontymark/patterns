package visitor

import (
	"fmt"
)


type GameInfo struct { // implements Acceptor
	Title
}

func NewGameInfo(titleName string ) *GameInfo {
	return &GameInfo{&TitleInfo{titleName}}
}    

func (this *GameInfo) Accept( tbv Visitor ) {
	tbv.Visit( this )
}

func (this *GameInfo) GetLongBlurb() string {
	return fmt.Sprintf("LB-Game: %s" ,this.GetTitle() )
}

func (this *GameInfo) GetShortBlurb() string {
	return fmt.Sprintf("SB-Game: %s" , this.GetTitle() )
}
