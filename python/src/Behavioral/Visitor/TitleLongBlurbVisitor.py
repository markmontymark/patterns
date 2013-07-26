#//TitleLongBlurbVisitor - one of two concrete Visitors

from TitleBlurbVisitor import TitleBlurbVisitor
from BookInfo import BookInfo
from DvdInfo import DvdInfo
from GameInfo import GameInfo

class TitleLongBlurbVisitor(TitleBlurbVisitor):

	def visit (self, info):
		if isinstance(info,BookInfo):
			self.setTitleBlurb("LB-Book: " + info.titleName + ", Author: " + info.author)
		elif isinstance(info,DvdInfo):
			self.setTitleBlurb("LB-DVD: " + info.titleName + ", starring " + info.star + ", encoding region: " + info.region)
		elif isinstance(info,GameInfo):
			self.setTitleBlurb("LB-Game: " + info.titleName )
