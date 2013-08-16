//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Interpreter Overview
//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
//DvdInterpreterClient - the Client

package interpreter

import (
	"strings"
)


type DvdInterpreterClient struct {  
   ctx *DvdInterpreterContext
}

func NewDvdInterpreterClient( ctx *DvdInterpreterContext )  *DvdInterpreterClient {
	obj := new(DvdInterpreterClient)
	obj.ctx = ctx
	return obj
}

func parseExpr (exprStr string ) (string,string,string)  {
	currentToken := ""

	mainQuery := " "
	subQuery := " "
	forUsed := false
	searchString := ""
	searchStarted := false
	searchEnded := false
      
   tokens := strings.Split(exprStr, " ") 
	tokensLen := len(tokens)
	for i:= 0 ; i < tokensLen ; i++ {
		currentToken = tokens[i]
		if currentToken == "title" {
			if mainQuery == " " {
				mainQuery = "T"
			} else if subQuery == " " {
				if forUsed {
					subQuery = "T"
				}
			}
		} else if currentToken == "actor" {
			if mainQuery == " " {
				mainQuery = "A"
			} else if subQuery == " " {
				if forUsed {
					subQuery = "A"
				}
			} 
		} else if currentToken == "for" {
			forUsed = true
		} else if searchString == "" {
			if subQuery != " " {
				if strings.Index(currentToken,"<") == 0 {
					searchString = currentToken
					searchStarted = true
					if strings.LastIndex(currentToken, ">") == (len(currentToken) - 1) {
						searchEnded = true
					}
				}
			}
		} else if searchStarted {
			if ! searchEnded {
				searchString = searchString + " " + currentToken
				if strings.LastIndex(currentToken, ">") == (len(currentToken) - 1) {
					searchEnded = true
				}
			}
		}
	}

	//remove <>
	if searchString != "" {
		searchString = searchString[1:len(searchString) - 1]
	}
	return mainQuery, subQuery, searchString
}

func makeExpr ( mainQuery string, subQuery string, searchString string) DvdAbstractExpression  {
	switch mainQuery {
	case "A" : 
		switch subQuery {
		case "T" : return NewDvdActorTitleExpression(searchString)
		default :  return NewDvdActorExpression()
		}
	case "T" : 
		switch subQuery {
		case "A" : return NewDvdTitleActorExpression(searchString)
		default :  return NewDvdTitleExpression()
		}
	} 
	return nil
}
    
// expression syntax:
// show title | actor [for actor | title ]
func (this *DvdInterpreterClient) Interpret (exprStr string) string {
	mainQuery , subQuery , searchString := parseExpr(exprStr)
	var expr DvdAbstractExpression = makeExpr( mainQuery, subQuery, searchString)
	return "Query Result: " +  expr.Interpret( this.ctx )
}
