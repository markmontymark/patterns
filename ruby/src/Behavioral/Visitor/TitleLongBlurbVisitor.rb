#//TitleLongBlurbVisitor - one of two concrete Visitors

require "Behavioral/Visitor/TitleBlurbVisitor"
require "Behavioral/Visitor/BookInfo"
require "Behavioral/Visitor/DvdInfo"
require "Behavioral/Visitor/GameInfo"

class TitleLongBlurbVisitor < TitleBlurbVisitor

	def visit ( info)
		if isinstance(info,BookInfo)
			setTitleBlurb("LB-Book: " + info.titleName + ", Author: " + info.author)
		elsif isinstance(info,DvdInfo)
			setTitleBlurb("LB-DVD: " + info.titleName + ", starring " + info.star + ", encoding region: " + info.region)
		elsif isinstance(info,GameInfo)
			setTitleBlurb("LB-Game: " + info.titleName )
		end
	end
end
