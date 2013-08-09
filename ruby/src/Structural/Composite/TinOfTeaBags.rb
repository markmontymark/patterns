
# - one composite extension - the "node"

require "Structural/Composite/TeaBags"

class TinOfTeaBags < TeaBags
	def initialize(name)
 		@name = name
		@teaBagList = []
	end

	def countTeaBags()
 		totalTeaBags = 0
		list = createListIterator()
		for teaBags in list
			totalTeaBags += teaBags.countTeaBags()
		end
		return totalTeaBags
	end

	def add(teaBagsToAdd)
 		teaBagsToAdd.setParent(self)
		@teaBagList.push(teaBagsToAdd)
	end

	def remove(teaBagsToRemove)
 		list = createListIterator()
		list_size = list.length
		newlist = []
		for teaBag in list
 			if teaBag != teaBagsToRemove
				newlist.push(teaBag)
			end
		end
		@teaBagList = newlist
		return list_size != @teaBagList.length
	end

	def createListIterator()
 		return @teaBagList
	end

end
