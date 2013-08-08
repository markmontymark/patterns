
# Soup- A helper class

class Soup
	def initialize()
		raise Exception("Can't instantiate abstract class, Soup")
	end

	def __str__()
		retval = [@soupName, 'Ingredients: ']
		for i in @soupIngredients
			retval.append(i)
		end
		return retval.join(', ');
	end
end


