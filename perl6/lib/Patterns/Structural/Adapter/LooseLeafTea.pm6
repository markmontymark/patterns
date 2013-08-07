#//LooseLeafTea - the adaptee

class LooseLeafTea {

	has Bool $.teaIsSteeped is rw;

	method steepTea 
	{
		$.teaIsSteeped = True;
	}

}
