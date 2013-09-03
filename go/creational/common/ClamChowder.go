package common

type ClamChowder struct {
	SoupImpl
}

func NewClamChowder() *ClamChowder {
   return &ClamChowder{ SoupImpl{
   "ClamChowder",
   []string{
		"1 Pound Fresh Clams",
		"1 cup fruit or vegetables",
		"1/2 cup milk",
		"1/4 cup butter",
		"1/4 cup chips",
	}}}
}
