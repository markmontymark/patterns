
#//DvdInfo - two of three concrete Visitees

use Patterns::Behavioral::Visitor::AbstractTitleInfo;

class DvdInfo is AbstractTitleInfo {

	has $.star is rw;
	has $.region is rw;

} 
