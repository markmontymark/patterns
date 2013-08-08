#DvdTitleInfo - one of three concrete templates

require "Behavioral/Template_Method/TitleInfo"

class DvdTitleInfo < TitleInfo
	def initialize(titleName,star,encodingRegion)
 		@titleName = titleName
		@star = star
		@encodingRegion = encodingRegion
	end

	def getTitleBlurb()
 		return "DVD: {0}, starring {1} ".format(@titleName, @star)
	end

	def getDvdEncodingRegionInfo()
		return ", encoding region: {0}".format(@encodingRegion)
	end

end

