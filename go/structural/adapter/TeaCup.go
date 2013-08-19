package adapter


//TeaCup - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

type TeaCup struct {}

func NewTeaCup() *TeaCup {
	return new(TeaCup)
}

func (this *TeaCup ) SteepTeaInCup( tb TeaIngredientInterface ) {
	tb.SteepTeaInCup()
}
