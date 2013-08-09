#DvdTitleInfo - one of three concrete templates

require "Behavioral/Template_Method/TitleInfo"

class DvdTitleInfo < TitleInfo
	def initialize(titleName,star,encodingRegion)
 		@titleName = titleName
		@star = star
		@encodingRegion = encodingRegion
	end

	def getTitleBlurb()
 		"DVD: #{getTitleName}, starring #{@star}"
	end

	def getDvdEncodingRegionInfo()
		", encoding region: #{@encodingRegion}"
	end

end

