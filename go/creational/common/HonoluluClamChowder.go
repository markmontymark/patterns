package common;

type HonoluluClamChowder struct {
	ClamChowder
}

func NewHonoluluClamChowder() *HonoluluClamChowder {
   return &HonoluluClamChowder{ ClamChowder{ SoupImpl{
	"PacificClamChowder",
   []string {
	"1 Pound Fresh Pacific Clams",
	"1 cup pineapple chunks",
	"1/2 cup coconut milk",
	"1/4 cup SPAM",
	"1/4 cup taro chips",
	}}}}
}
