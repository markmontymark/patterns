
#//DvdRelease - a helper class

class DvdRelease {

	has $.serialNumber is rw;
	has $.name is rw;
	has $.releaseYear is rw;
	has $.releaseMonth is rw;
	has $.releaseDay is rw;

	method new (Str $serialNumber, $name, Int $releaseYear, Int $releaseMonth, Int $releaseDay ) 
	{
		return self.bless( * , :$serialNumber,
			:$name,
			:$releaseYear ,
			:$releaseMonth ,
			:$releaseDay );
	}

	method updateRelease( DvdRelease $release )
	{
		$.serialNumber = $release.serialNumber;
		$.name = $release.name;
		$.releaseYear = $release.releaseYear;
		$.releaseMonth = $release.releaseMonth;
		$.releaseDay = $release.releaseDay;
	}
   
	method updateDvdReleaseDate(Int $releaseYear, Int $releaseMonth, Int $releaseDay)
	{
		$.releaseYear = $releaseYear;
		$.releaseMonth = $releaseMonth;
		$.releaseDay = $releaseDay;
	}

}
