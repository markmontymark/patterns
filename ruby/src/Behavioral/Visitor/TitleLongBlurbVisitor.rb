#//TitleLongBlurbVisitor - one of two concrete Visitors

#require "Behavioral/Visitor/TitleBlurbVisitor"
#require "Behavioral/Visitor/BookInfo"
#require "Behavioral/Visitor/DvdInfo"
#require "Behavioral/Visitor/GameInfo"

class TitleLongBlurbVisitor < TitleBlurbVisitor

	def visit ( info)
		if info.is_a? BookInfo
			setTitleBlurb("LB-Book: #{info.titleName}, Author: #{info.author}")
		elsif info.is_a? DvdInfo
			setTitleBlurb("LB-DVD: #{ info.titleName}, starring #{info.star }, region: #{ info.region }")
		elsif info.is_a? GameInfo
			setTitleBlurb("LB-Game: #{info.titleName }")
		end
	end
end
