# //DvdName - the Receiver

class DvdName {

	has $.titleName is rw;

	method setNameStarsOn {	
		$.titleName = $.titleName.subst( rx / ' ' /, '*', :g );
	}

	method setNameStarsOff {
		$.titleName = $.titleName.subst( rx / '*' /, ' ', :g );
	}

	method toString
	{
		'DVD: ' ~ $.titleName
	}

}

