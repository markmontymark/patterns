<?

#//OneTeaBag.java - one composite extension - the "leaf"

require_once 'TeaBags.php';


class OneTeaBag extends TeaBags
{

function countTeaBags() { return 1; } 
function add() { return 0; }
function remove(){ return 0; }

}

