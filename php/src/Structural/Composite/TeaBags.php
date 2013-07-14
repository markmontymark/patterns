<?
abstract class TeaBags {

public $parent;
public $name;
public $teaBagList;

abstract function countTeaBags();
abstract function add ();
abstract function remove();

function __construct($name)
{
	$this->name = $name;
}

}
