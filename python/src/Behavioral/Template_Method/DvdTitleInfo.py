#//DvdTitleInfo.java - one of three concrete templates


#//GameTitleInfo.java - three of three concrete templates

define ['Behavioral/Template_Method/TitleInfo'
],(
TitleInfo
) ->

	class DvdTitleInfo extends TitleInfo
		constructor : (@titleName,@star,@encodingRegion) ->
		getTitleBlurb : -> "DVD: #{ @titleName}, starring #{ @star} "
		getDvdEncodingRegionInfo : -> ", encoding region: #{@encodingRegion}"

