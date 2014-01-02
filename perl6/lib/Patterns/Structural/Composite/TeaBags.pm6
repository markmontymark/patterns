role TeaBags {

	has TeaBags $.parent is rw;
	has Str $.name is rw;
	has TeaBags @.teaBagList is rw = ();

	method new (Str $name )
	{
		return self.bless( :$name );
	}

	method countTeaBags returns Int { ... }
	method add returns Bool { ... }
	method remove returns Bool { ... }


}
