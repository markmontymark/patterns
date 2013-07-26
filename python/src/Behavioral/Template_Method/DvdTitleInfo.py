#DvdTitleInfo - one of three concrete templates

from TitleInfo import TitleInfo

class DvdTitleInfo(TitleInfo) :
	def __init__(self,titleName,star,encodingRegion) :
		self.titleName = titleName
		self.star = star
		self.encodingRegion = encodingRegion

	def getTitleBlurb(self) : 
		return "DVD: {0}, starring {1} ".format(self.titleName, self.star)

	def getDvdEncodingRegionInfo(self):
		return ", encoding region: {0}".format(self.encodingRegion)

