
#//BookInfo - one of three concrete Visitees

use Patterns::Behavioral::Visitor::AbstractTitleInfo;

class BookInfo is AbstractTitleInfo {

	has $.author is rw;

}
