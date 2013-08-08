

#//TitleShortBlurbVisitor - two of two concrete Visitors

require "TitleBlurbVisitor"
require "BookInfo"
require "DvdInfo"
require "GameInfo"

class TitleShortBlurbVisitor < TitleBlurbVisitor

	def visit (info) 
		if isinstance(info,BookInfo)
			setTitleBlurb("SB-Book: " + info.titleName)
		elsif isinstance(info,DvdInfo)
			setTitleBlurb("SB-DVD: " + info.titleName)
		elsif isinstance(info,GameInfo)
			setTitleBlurb("SB-Game: " + info.titleName)
		end
	end
end
