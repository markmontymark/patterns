#DvdTitleInfo - one of three concrete templates

require "TitleInfo"

class DvdTitleInfo < TitleInfo
	def initialize(titleName,star,encodingRegion) 		@titleName = titleName
		@star = star
		@encodingRegion = encodingRegion

	def getTitleBlurb(self) 		return "DVD: {0}, starring {1} ".format(@titleName, @star)

	def getDvdEncodingRegionInfo(self)		return ", encoding region: {0}".format(@encodingRegion)

