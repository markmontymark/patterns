class DvdMemento {

	has %.cache;

	method setState( %obj )
	{
		for %obj.kv -> $k,$v
		{
			%.cache{$k} = $v 
		}
	}

	method getState
	{
		%.cache
	}

}
