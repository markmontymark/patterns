package common

type BostonClamChowder struct {
	ClamChowder
}


func NewBostonClamChowder() *BostonClamChowder {
	return &BostonClamChowder{
      ClamChowder{ SoupImpl{ 
			"QuahogChowder", []string{
			"1 Pound Fresh Quahogs",
			"1 cup corn",
			"1/2 cup heavy cream",
			"1/4 cup butter",
			"1/4 cup potato chips",
		}}}}
}
