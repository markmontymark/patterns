#//CommandAbstract - the Command

class CommandAbstract
	def __new__()
		raise Exception("Unimplemented method, CommandAbstract.execute")
	end

	def execute()
 		raise Exception("Unimplemented method, CommandAbstract.execute")
	end
end
	
