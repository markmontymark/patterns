package common

type TofuSoup struct {
	SoupImpl
}

func NewTofuSoup() *TofuSoup {
	return &TofuSoup{ SoupImpl {
   "Tofu Soup",
   []string{
	"1 Pound tofu",
	"1 cup carrot juice",
	"1/4 cup spirolena",
	}}}
}

