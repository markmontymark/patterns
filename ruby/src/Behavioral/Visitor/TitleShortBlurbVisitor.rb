

#//TitleShortBlurbVisitor - two of two concrete Visitors

from TitleBlurbVisitor import TitleBlurbVisitor
from BookInfo import BookInfo
from DvdInfo import DvdInfo
from GameInfo import GameInfo

class TitleShortBlurbVisitor(TitleBlurbVisitor):

	def visit (self,info) :

		if isinstance(info,BookInfo):
			self.setTitleBlurb("SB-Book: " + info.titleName)
		elif isinstance(info,DvdInfo):
			self.setTitleBlurb("SB-DVD: " + info.titleName)
		elif isinstance(info,GameInfo):
			self.setTitleBlurb("SB-Game: " + info.titleName)
