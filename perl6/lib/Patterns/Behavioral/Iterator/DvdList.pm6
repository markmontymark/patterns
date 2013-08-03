

#//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)


class DvdList {

	has @.titles;
	has $.titleCount is rw = 0;

	method dump
	{
		say " dumping " ~ @.titles.join: ',';
	}

	method append($title) {
		@.titles.push: $title;
		#say "my titles " ~ @.titles.join: ',';
		$.titleCount += 1;
	}

	method getTitles {
		@.titles
	}

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	method remove (Str $title) {
		my $found = 0;
		my $foundI = -1;
		my $i = 0;	
		for @.titles {
			if $title eq $_ {
				$foundI = $i;
				last;
			}
			$i += 1;
		}
		if $foundI != -1 {
			$.titleCount -= 1;
			@.titles.splice($foundI,1);
		}
	}

} 
