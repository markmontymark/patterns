package templatemethod

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo - the abstract Template

type TitleInfoInterface interface {  
   GetTitleBlurb() string
   GetDvdEncodingRegionInfo() string
}
