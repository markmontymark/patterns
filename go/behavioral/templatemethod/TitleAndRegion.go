
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo - the abstract Template


package templatemethod

import (
	//"fmt"
)

type TitleAndRegion struct {   // implements TitleableRegionable
	title, region string
}

func NewTitleAndRegion( title, region string ) *TitleAndRegion {
	return &TitleAndRegion{ title, region }
}

//the "template method" - 
//  calls the concrete class methods, is not overridden
//func ProcessTitleInfo( info TitleAndRegion ) string {
	//return fmt.Sprintf( "%s%d", 
		//info.GetTitleBlurb() ,
		//info.GetDvdEncodingRegionInfo() )
//}  


