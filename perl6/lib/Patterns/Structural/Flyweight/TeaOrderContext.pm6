#//TeaOrderContext - the Context

class TeaOrderContext {

	has Int $.tableNumber is rw;

	method new( Int $tableNumber)
	{
		return self.bless( :$tableNumber );
	}

}
