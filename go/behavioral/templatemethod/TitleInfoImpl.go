
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleInfo.java - the abstract Template


package templatemethod

type TitleInfoImpl struct {  
  titleName string
}

//the "template method" - 
//  calls the concrete class methods, is not overridden
func ProcessTitleInfo( info TitleInfoInterface ) string {
	return info.GetTitleBlurb()  + info.GetDvdEncodingRegionInfo()
}  
   
//the following 2 methods are "concrete abstract class methods"
func (this *TitleInfoImpl) SetTitleName(titleNameIn string) {
	 this.titleName = titleNameIn;
}
func (this *TitleInfoImpl) GetTitleName() string {
	 return this.titleName;
}

func (this *TitleInfoImpl) GetDvdEncodingRegionInfo () string {
	return " "
}
