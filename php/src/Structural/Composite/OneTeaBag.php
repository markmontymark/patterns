<?

#//OneTeaBag.java - one composite extension - the "leaf"

require_once 'TeaBags.php';


class OneTeaBag extends TeaBags
{

function countTeaBags() { return 1; } 
function add(TeaBags $tb) { return 0; }
function remove(TeaBags $tb){ return 0; }

}

