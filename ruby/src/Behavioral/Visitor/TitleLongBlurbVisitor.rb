#//TitleLongBlurbVisitor - one of two concrete Visitors

require "TitleBlurbVisitor"
require "BookInfo"
require "DvdInfo"
require "GameInfo"

class TitleLongBlurbVisitor < TitleBlurbVisitor

	def visit ( info)		if isinstance(info,BookInfo)			@setTitleBlurb("LB-Book: " + info.titleName + ", Author: " + info.author)
		elif isinstance(info,DvdInfo)			@setTitleBlurb("LB-DVD: " + info.titleName + ", starring " + info.star + ", encoding region: " + info.region)
		elif isinstance(info,GameInfo)			@setTitleBlurb("LB-Game: " + info.titleName )
