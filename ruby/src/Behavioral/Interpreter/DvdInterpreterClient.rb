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
		forUsed = false
		searchString = nil
		searchStarted = false
		searchEnded = false

		tokens = expression.split(' ')
		for currentToken in tokens
 			if currentToken == "show"
 				next
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
 				forUsed = true

			elsif searchString == nil and subQuery != ' ' and  currentToken.start_with?("<")
 				searchString = currentToken
				searchStarted = true
				if currentToken.end_with?(">")
 					searchEnded = true 
				end

			elsif searchStarted and not searchEnded
 				searchString += " " + currentToken
				if currentToken.end_with?(">")
					searchEnded = true 
				end
			end
		end


		#//remove <>
		if searchString != nil
			searchString = searchString.slice(1..-2)
			#searchString = searchString.substring(1,(searchString.length() - 1)) 
		end

		expr = nil
		if mainQuery == 'A'
 			if subQuery == 'T'
 				expr = DvdActorTitleExpression.new(searchString) 
			else
 				expr = DvdActorExpression.new()
			end
		elsif mainQuery == 'T'
 			if subQuery == 'A'
 				expr = DvdTitleActorExpression.new(searchString) 
			else
 				expr = DvdTitleExpression.new()
			end
		else
 			return str(result)
		end

		result.push(expr.interpret(@ctx))
		result.join('')
	end
end
