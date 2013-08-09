# TitleInfo - the abstract Template

class TitleInfo

	#//the "template method" - 
	#//  calls the concrete class methods, is not overridden
	def processTitleInfo ()
		return [getTitleBlurb(), getDvdEncodingRegionInfo()].join('')
	end

	#//the following 2 methods are "concrete abstract class methods"
	def setTitleName (titleNameIn)
 		@titleName = titleNameIn
	end

	def getTitleName ()
 		return @titleName
	end

	#//this is a "primitive operation", 
	#//  and must be overridden in the concrete templates
	def getTitleBlurb ()
		raise "Unimplemented method TitleInfo.getTitleBlurb"
	end

	#//this is a "hook operation", which may be overridden, 
	#//hook operations usually do nothing if not overridden 
	def getDvdEncodingRegionInfo()
 		return ' '
	end

end
