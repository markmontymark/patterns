# //DvdNameTheAtEndStrategy.java - two of three concrete strategies


from DvdNameStrategy import DvdNameStrategy

class DvdNameTheAtEndStrategy (DvdNameStrategy):
	def formatDvdName (self,dvdName,charIn):
		if dvdName.startswith('The '):
			return dvdName[4:] + ", The"
		elif dvdName.startswith('THE ' ):
			return dvdName[4:] + ", THE"
		elif dvdName.startswith('the '):
			return dvdName[4:] + ", the"
		else:
			return dvdName

