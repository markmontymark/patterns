

#//TitleShortBlurbVisitor - two of two concrete Visitors

#require "TitleBlurbVisitor"
#require "BookInfo"
#require "DvdInfo"
#require "GameInfo"

class TitleShortBlurbVisitor < TitleBlurbVisitor

	def visit (info) 
		if info.is_a? BookInfo
			setTitleBlurb("SB-Book: #{info.titleName}")
		elsif info.is_a? DvdInfo
			setTitleBlurb("SB-DVD: #{ info.titleName}")
		elsif info.is_a? GameInfo
			setTitleBlurb("SB-Game: #{info.titleName}")
		end
	end
end
