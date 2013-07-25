#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient - the Client

define ['Behavioral/Interpreter/DvdActorExpression',
'Behavioral/Interpreter/DvdTitleExpression',
'Behavioral/Interpreter/DvdTitleActorExpression',
'Behavioral/Interpreter/DvdActorTitleExpression'
],(
DvdActorExpression,
DvdTitleExpression,
DvdTitleActorExpression,
DvdActorTitleExpression
) ->
	class DvdInterpreterClient
		constructor : (@ctx) ->

		#// expression syntax:
		#/ show title | actor [for actor | title ]
		interpret : (expression) ->
			result = ["Query Result: "]
			mainQuery = ' '
			subQuery = ' '
			forUsed = false
			searchString = null
			searchStarted = false
			searchEnded = false

			for currentToken in expression.split(' ')
				if currentToken is "show"
					continue
				#//show in all queries, not really used
				if currentToken is "title"
					if mainQuery is ' '
						mainQuery = 'T'
					else
						if forUsed and subQuery is ' '
							subQuery = 'T'
				else if currentToken is "actor"
					if mainQuery is ' '
						mainQuery = 'A'
					else
						if forUsed and subQuery is ' '
							subQuery = 'A'

				else if currentToken is 'for'
					forUsed = true

				else if searchString is null and subQuery isnt ' ' and  currentToken[0] is "<"
					searchString = currentToken
					searchStarted = true
					searchEnded = true if currentToken.endsWith(">")

				else if searchStarted and not searchEnded
					searchString += " " + currentToken
					searchEnded = true if currentToken.endsWith(">")
			#end for 


			#//remove <>
			searchString = searchString.substring(1,(searchString.length() - 1)) if searchString

			expr = null
			switch mainQuery
				when 'A'
					switch subQuery
						when 'T' then expr = new DvdActorTitleExpression(searchString)
						else expr = new DvdActorExpression()
				when 'T'
					switch subQuery
						when 'A' then expr = new DvdTitleActorExpression(searchString)
						else expr = new DvdTitleExpression()
				else return result.toString()

			result.push expr.interpret(@ctx)
			return result.toString()
