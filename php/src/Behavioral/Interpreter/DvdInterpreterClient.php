<?
#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Interpreter Overview
#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient - the Client

require_once 'DvdActorExpression.php';
require_once 'DvdActorTitleExpression.php';
require_once 'DvdTitleExpression.php';
require_once 'DvdTitleActorExpression.php';

class DvdInterpreterClient
{
	public $ctx;

	function __construct($ctx)
	{
		$this->ctx = $ctx;
	}


	#// expression syntax:
	#// show title | actor [for actor | title ]
	function interpret ($expression)
	{
		$result = array();
		$result[]= "Query Result: ";

		$mainQuery = ' ';
		$subQuery = ' ';
		$forUsed = 0;
		$searchString = NULL;
		$searchStarted = 0;
		$searchEnded = 0;

		foreach ( preg_split('/\s+/',$expression)  as $currentToken )
		{
			if( ! $currentToken )
				continue;

			if($currentToken == "show") 
				continue; #//show in all queries, not really used

			else if ($currentToken == "title") 
			{
				if ($mainQuery == ' ') 
					$mainQuery = 'T';
				else if (($subQuery == ' ') && $forUsed) 
					$subQuery = 'T';
			} 
			else if ($currentToken == "actor") 
			{
				if ($mainQuery == ' ') 
					$mainQuery = 'A';
				else if (($subQuery == ' ') && $forUsed) 
					$subQuery = 'A';
			} 
			else if ($currentToken == "for") 
			{
				$forUsed = 1;
			} 
			else if (($searchString == NULL) && 
				($subQuery != ' ') && 
				(preg_match('/^[<]/',$currentToken) === 1)
			)
			{
				$searchString = $currentToken;
				$searchStarted = 1;
				if(preg_match('/[>]$/',$currentToken) === 1)
					$searchEnded = 1 ;
			} 
			else if($searchStarted && 
				!$searchEnded) 
			{
				$searchString .= ' ' . $currentToken;
				if(preg_match('/[>]$/',$currentToken) === 1)
					$searchEnded = 1 ;
			}
		}

		if($searchString)
			$searchString = substr($searchString,1, strlen($searchString) - 2);
		#//remove <>

		$abstractExpression;

		if( $mainQuery == 'A' )
		{
			$abstractExpression = ( $subQuery == 'T' && $searchString) ?  new DvdActorTitleExpression($searchString) : new DvdActorExpression();
		}      
		else if( $mainQuery == 'T')
		{	
			$abstractExpression = ($subQuery == 'A' && $searchString) ?  new DvdTitleActorExpression($searchString) : new DvdTitleExpression();
		}
		else
		{
			return implode('',$result);
		} 

		$result[]= $abstractExpression->interpret($this->ctx);
		return implode('',$result);
	}

}
