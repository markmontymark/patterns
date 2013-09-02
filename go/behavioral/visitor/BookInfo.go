package visitor

import (
	"fmt"
)

type BookInfo struct { // implements Acceptor 
	Title
	author string
}


func NewBookInfo(titleName, author string) *BookInfo {
	return &BookInfo{ &TitleInfo{titleName}, author}
}    
   
func (this *BookInfo) Accept( tbv Visitor ) {
	tbv.Visit( this )
}

func (this *BookInfo) GetLongBlurb( ) string {
	return fmt.Sprintf("LB-Book: %s, Author: %s", this.GetTitle() , this.author )
}

func (this *BookInfo) GetShortBlurb( ) string {
	return fmt.Sprintf("SB-Book: %s", this.GetTitle() )
}

