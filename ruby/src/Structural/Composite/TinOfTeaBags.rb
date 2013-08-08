
# - one composite extension - the "node"

require "TeaBags"

class TinOfTeaBags < TeaBags
	def initialize(name) 		@name = name
		@teaBagList = []

	def countTeaBags(self) 		totalTeaBags = 0
		list = @createListIterator()
		for teaBags in list			totalTeaBags += teaBags.countTeaBags()
		return totalTeaBags

	def add(teaBagsToAdd) 		teaBagsToAdd.setParent(self)
		@teaBagList.append(teaBagsToAdd)

	def remove(teaBagsToRemove) 		list = @createListIterator()
		list_size = len(list)
		newlist = []
		for teaBag in list 			if teaBag != teaBagsToRemove				newlist.append(teaBag)
		@teaBagList = newlist
		return list_size != len(@teaBagList)

	def createListIterator(self) 		return @teaBagList
