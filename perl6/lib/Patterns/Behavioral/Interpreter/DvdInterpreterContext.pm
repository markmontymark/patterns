#//DvdInterpreterContext - The Context

use Patterns::Behavioral::Interpreter::TitleAndActor;

class DvdInterpreterContext {

	has %.titles;
	has %.actors;
	has TitleAndActor @.titlesAndActors;


	method addTitle(Str $title) {
		%.titles{$title} = 0;
	}

	method addActor(Str $actor) {
		%.actors{$actor} = 0;
	}

	method addTitleAndActor(TitleAndActor $titleAndActor) {
		@.titlesAndActors.push: $titleAndActor;
		self.addTitle( $titleAndActor.title );
		self.addActor( $titleAndActor.actor );
	}

	method getTitles {
		%.titles.keys.sort
	}

	method getActors{
		%.actors.keys.sort
	}

	method getActorsForTitle($title) {
		my @retval;
		for @.titlesAndActors {
			@retval.push: $_.actor if $title eq $_.title;
		}
		@retval.sort
	}

	method getTitlesForActor($actor) {
		my @retval;
		for @.titlesAndActors {
			@retval.push: $_.title if $actor eq $_.actor;
		}
		@retval.sort
	}

}
