
# - the decoratee

from Tea import Tea

class TeaLeaves(Tea):

	def __init__(self) :
		self.teaIsSteeped = False

	def steepTea(self) :
		self.teaIsSteeped = True
		return "tea leaves are steeping"

