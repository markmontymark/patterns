#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient - the Client

from DvdActorExpression import DvdActorExpression
from DvdTitleExpression import DvdTitleExpression
from DvdTitleActorExpression import DvdTitleActorExpression
from DvdActorTitleExpression import DvdActorTitleExpression

class DvdInterpreterClient:
	def __init__(self,ctx) :
		self.ctx = ctx

	#// expression syntax:
	#/ show title | actor [for actor | title ]
	def interpret(self,expression) :
		result = ["Query Result: "]
		mainQuery = ' '
		subQuery = ' '
		forUsed = False
		searchString = None
		searchStarted = False
		searchEnded = False

		tokens = expression.split(' ')
		for currentToken in tokens :
			if currentToken == "show" :
				continue
			#//show in all queries, not really used
			if currentToken == "title" :
				if mainQuery == ' ' :
					mainQuery = 'T'
				else :
					if forUsed and subQuery == ' ' :
						subQuery = 'T'
			elif currentToken == "actor" :
				if mainQuery == ' ' :
					mainQuery = 'A'
				else :
					if forUsed and subQuery == ' ' :
						subQuery = 'A'

			elif currentToken == 'for' :
				forUsed = True

			elif searchString == None and subQuery != ' ' and  currentToken.startswith("<") :
				searchString = currentToken
				searchStarted = True
				if currentToken.endswith(">") :
					searchEnded = True 

			elif searchStarted and not searchEnded :
				searchString += " " + currentToken
				if currentToken.endswith(">"):
					searchEnded = True 
			#end for 


		#//remove <>
		if searchString != None :
			searchString = searchString.strip('<>')
			#searchString = searchString.substring(1,(searchString.length() - 1)) 

		expr = None
		if mainQuery == 'A' :
			if subQuery == 'T' :
				expr = DvdActorTitleExpression(searchString) 
			else :
				expr = DvdActorExpression()
		elif mainQuery == 'T' :
			if subQuery == 'A' :
				expr = DvdTitleActorExpression(searchString) 
			else :
				expr = DvdTitleExpression()
		else :
			return str(result)

		result.append(expr.interpret(self.ctx))
		return str(result)
