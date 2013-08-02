#//DvdInterpreterContext - The Context

use Patterns::Behavioral::Interpreter::TitleAndActor;

class DvdInterpreterContext {

	has Str @.titles;
	has Str @.actors;
	has TitleAndActor @.titlesAndActors;


	method addTitle(Str $title) {
		@.titles.push: $title;
	}

	method addActor(Str $actor) {
		@.actors.push: $actor;
	}

	method addTitleAndActor(TitleAndActor $titleAndActor) {
		@.titlesAndActors.push: $titleAndActor;
	}

	method getActorsForTitle($title) {
		my @retval;
		for @.titlesAndActors {
			@retval.push: $_.actor if $title eq $_.title;
		}
		@retval
	}

	method getTitlesForActor($actor) {
		my @retval;
		for @.titlesAndActors {
			@retval.push: $_.title if $actor eq $_.actor;
		}
		@retval
	}

}
