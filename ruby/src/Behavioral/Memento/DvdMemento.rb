
class DvdMemento

	def initialize(cache = {})
		@cache = cache;
	end

	def setState (toSave)
 		@cache = copy.deepcopy(toSave)
	end

	def getState ()
		return @cache
	end
end

