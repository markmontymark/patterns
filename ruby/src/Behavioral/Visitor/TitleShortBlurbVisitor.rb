

#//TitleShortBlurbVisitor - two of two concrete Visitors

require "TitleBlurbVisitor"
require "BookInfo"
require "DvdInfo"
require "GameInfo"

class TitleShortBlurbVisitor < TitleBlurbVisitor

	def visit (info) 
		if isinstance(info,BookInfo)			@setTitleBlurb("SB-Book: " + info.titleName)
		elif isinstance(info,DvdInfo)			@setTitleBlurb("SB-DVD: " + info.titleName)
		elif isinstance(info,GameInfo)			@setTitleBlurb("SB-Game: " + info.titleName)
