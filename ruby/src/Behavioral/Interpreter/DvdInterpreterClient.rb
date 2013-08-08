#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient - the Client

require "Behavioral/Interpreter/DvdActorExpression"
require "Behavioral/Interpreter/DvdTitleExpression"
require "Behavioral/Interpreter/DvdTitleActorExpression"
require "Behavioral/Interpreter/DvdActorTitleExpression"

class DvdInterpreterClient
	def initialize(ctx)
 		@ctx = ctx
	end

	#// expression syntax	#/ show title | actor [for actor | title ]
	def interpret(expression)
 		result = ["Query Result: "]
		mainQuery = ' '
		subQuery = ' '
		forUsed = False
		searchString = None
		searchStarted = False
		searchEnded = False

		tokens = expression.split(' ')
		for currentToken in tokens
 			if currentToken == "show"
 				continue
			end

			#//show in all queries, not really used
			if currentToken == "title"
 				if mainQuery == ' '
 					mainQuery = 'T'
				elsif forUsed and subQuery == ' '
 						subQuery = 'T'
				end
			elsif currentToken == "actor"
 				if mainQuery == ' '
 					mainQuery = 'A'
				elsif forUsed and subQuery == ' '
 						subQuery = 'A'
				end

			elsif currentToken == 'for'
 				forUsed = True

			elsif searchString == None and subQuery != ' ' and  currentToken.startswith("<")
 				searchString = currentToken
				searchStarted = True
				if currentToken.endswith(">")
 					searchEnded = True 
				end

			elsif searchStarted and not searchEnded
 				searchString += " " + currentToken
				if currentToken.endswith(">")
					searchEnded = True 
				end
			end
		end


		#//remove <>
		if searchString != None
 			searchString = searchString.strip('<>')
			#searchString = searchString.substring(1,(searchString.length() - 1)) 
		end

		expr = None
		if mainQuery == 'A'
 			if subQuery == 'T'
 				expr = DvdActorTitleExpression(searchString) 
			else
 				expr = DvdActorExpression()
			end
		elsif mainQuery == 'T'
 			if subQuery == 'A'
 				expr = DvdTitleActorExpression(searchString) 
			else
 				expr = DvdTitleExpression()
			end
		else
 			return str(result)
		end

		result.append(expr.interpret(@ctx))
		return str(result)
	end
end
