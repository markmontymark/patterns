<?
abstract class TeaBags {

public $parent;
public $name;
public $teaBagList;

abstract function countTeaBags();
abstract function add (TeaBags $tb );
abstract function remove(TeaBags $tb );

function __construct($name)
{
	$this->name = $name;
}

}
