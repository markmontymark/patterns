package common


type ChickenSoup struct {
	Soup
} //extends Soup


func NewChickenSoup() *ChickenSoup {
	return &ChickenSoup{ 
		&SoupImpl{ 
			"ChickenSoup", 
			[]string{
				"1 Pound diced chicken",
				"1/2 cup rice",
				"1 cup bullion",
				"1/16 cup butter",
				"1/4 cup diced carrots" ,
		}}}
}   
