
# Soup- A helper class

class Soup
	attr_reader :soupName
	attr_writer :soupName
	
	def initialize()
		raise Exception("Can't instantiate abstract class, Soup")
	end

	def getSoupName
		@soupName
	end

	def to_s()
		retval = [@soupName, 'Ingredients: ']
		for i in @soupIngredients
			retval.push(i)
		end
		return retval.join(', ');
	end
end


