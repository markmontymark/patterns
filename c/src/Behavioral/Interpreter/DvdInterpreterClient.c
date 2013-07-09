
//Interpreter Overview
//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
//DvdInterpreterClient - the Client

#include "string.h"

#include "../../common/arraylist_string.h"
#include "../../common/common_str.h"

#include "DvdInterpreterClient.h"
#include "DvdExpression.h"
#include "DvdActorExpression.h"
#include "DvdActorTitleExpression.h"
#include "DvdTitleExpression.h"
#include "DvdTitleActorExpression.h"

#include "stdlib.h"


DvdInterpreterClient_t * DvdInterpreterClient_new( DvdInterpreterContext_t *  ctx) 
{
	DvdInterpreterClient_t * d = malloc( DvdInterpreterClient_s );
	d->ctx = ctx;
	return d;
}
void DvdInterpreterClient_free ( DvdInterpreterClient_t * d)
{
	if( d == NULL )
		return;
	free( d );
}
    
// expression syntax:
// show title | actor [for actor | title ]
char * DvdInterpreterClient_interpret(DvdInterpreterClient_t * client, char * expression) 
{
	arraylist_string_t * result = arraylist_string_new();
	arraylist_string_add( result, "Query Result: ");
       
	char mainQuery = ' ';
	char subQuery = ' ';
	char * token;
	char * delim = " ";
	char * ee = strdup(expression);
	token = strtok(ee,delim);
	int forUsed = 0;
	int searchStarted = 0;
	int searchEnded = 0;
	char * searchString = NULL;
	while( (token = strtok( NULL, delim )) != NULL )
	{
		if ( strcmp( token,"show")== 0) 
		{
			continue;
			//show in all queries, not really used
		} 

		else if (strcmp( token,"title") == 0) 
		{
			if (mainQuery == ' ') 
				mainQuery = 'T';
			else if ( forUsed && (subQuery == ' ') ) 
				subQuery = 'T';
		} 
		else if (strcmp( token,"actor") == 0) 
		{
			if (mainQuery == ' ') 
				mainQuery = 'A';
			else if (forUsed && (subQuery == ' ') ) 
				subQuery = 'A';
		} 

		else if (strcmp( token,"for") == 0) 
		{
			forUsed = 1;
		} 
		else if ( searchString == NULL  &&  subQuery != ' '  && *token == '<' )
		{
			searchString = token;
			searchStarted = 1;
			if ( *(token + strlen(token)) == '>') 
				searchEnded = 1;
		} 
		else if ( searchStarted  &&  !searchEnded ) 
		{
			int sslen = strlen(searchString);
			int tokenlen = strlen(token);
			char * newSearchString = malloc( sslen + tokenlen + 1 + 1);
			snprintf( newSearchString, sslen + tokenlen + 1 + 1, "%s %s",searchString,token);
			searchString = newSearchString;
			if ( *(token + strlen(token)) == '>') 
				searchEnded = 1;
		}
	}

	if (searchString != NULL) 
	{
		searchString++;// = searchString.substring(1,(searchString.length() - 1));
		*(searchString + strlen(searchString) - 1) = '\0';
		//printf("searchString is %s\n",searchString);
		//remove <>
	}

	DvdExpression_t * expr;

	switch (mainQuery) 
	{
		case 'A' :  
		{
			switch (subQuery) 
			{
				case 'T' :
					expr = DvdActorTitleExpression_new(searchString);
					break;

				default :
					expr = DvdActorExpression_new();
					break;
			}
			break;
		}      

		case 'T' : 
		{
			switch (subQuery) 
			{
				case 'A' :
					expr = DvdTitleActorExpression_new(searchString);
					break;
				default :
					expr = DvdTitleExpression_new();
					break;
			}
			break;
		}            

		default : 
		{
			char * retval = arraylist_string_to_string( result );
			arraylist_string_free( result );
			return retval;
		}
	} 


	arraylist_string_add( result, expr->interpret( expr, client->ctx));
	char * retval = arraylist_string_to_string( result );
	arraylist_string_free( result );
	return retval;
}
