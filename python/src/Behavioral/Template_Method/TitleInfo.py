# TitleInfo - the abstract Template

class TitleInfo:

	titleName = None

	#//the "template method" - 
	#//  calls the concrete class methods, is not overridden
	def ProcessTitleInfo (self):
		return ''.join( [self.getTitleBlurb(), self.getDvdEncodingRegionInfo()] )

	#//the following 2 methods are "concrete abstract class methods"
	def setTitleName (self,titleNameIn) :
		self.titleName = titleNameIn

	def getTitleName (self) : 
		return self.titleName

	#//this is a "primitive operation", 
	#//  and must be overridden in the concrete templates
	def getTitleBlurb (self): 
		raise Exception("Unimplemented method TitleInfo.getTitleBlurb")

	#//this is a "hook operation", which may be overridden, 
	#//hook operations usually do nothing if not overridden 
	def getDvdEncodingRegionInfo(self) : 
		return ' '
