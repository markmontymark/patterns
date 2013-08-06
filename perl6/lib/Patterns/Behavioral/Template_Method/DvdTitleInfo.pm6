
#//DvdTitleInfo - one of three concrete templates

use Patterns::Behavioral::Template_Method::TitleInfo;

class DvdTitleInfo does TitleInfo {

	has Str $.star is rw;
	has Int $.region is rw;

	method new(Str $titleName,Str $star, Int $region)
	{
		return self.bless( * , 
			:$titleName,
			:$star,
			:$region );
	}

	method getStar {	$.star }
	method getRegionInfo {	' ' ~ $.region }
   
	method getTitleBlurb {
		'DVD: ' ~ self.getTitleName() ~  ', starring ' ~ self.getStar()
	}

}
