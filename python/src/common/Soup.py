
# Soup- A helper class

class Soup:
	def __init__(self) :
		raise Exception("Can't instantiate abstract class, Soup")

	def __str__(self): 
		retval = [self.soupName, 'Ingredients: ']
		for i in self.soupIngredients:
			retval.append(i)
		return ', '.join(retval)


