
# - one composite extension - the "node"

from TeaBags import TeaBags

class TinOfTeaBags(TeaBags):
	def initialize(name) :
		self.name = name
		self.teaBagList = []

	def countTeaBags(self) :
		totalTeaBags = 0
		list = self.createListIterator()
		for teaBags in list:
			totalTeaBags += teaBags.countTeaBags()
		return totalTeaBags

	def add(self,teaBagsToAdd) :
		teaBagsToAdd.setParent(self)
		self.teaBagList.append(teaBagsToAdd)

	def remove(self,teaBagsToRemove) :
		list = self.createListIterator()
		list_size = len(list)
		newlist = []
		for teaBag in list :
			if teaBag != teaBagsToRemove:
				newlist.append(teaBag)
		self.teaBagList = newlist
		return list_size != len(self.teaBagList)

	def createListIterator(self) : 
		return self.teaBagList
