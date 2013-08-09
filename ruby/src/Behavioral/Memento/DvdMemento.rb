
class DvdMemento

	def initialize(toSave)
 		@cache = Marshal.load(Marshal.dump(toSave))
	end

	def getState
		@cache
	end
end

