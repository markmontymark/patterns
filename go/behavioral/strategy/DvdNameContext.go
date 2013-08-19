

//DvdNameContext - the context

package strategy

type DvdNameContext struct {
   dvdStrategy DvdStrategy
}

func NewDvdNameContext( dns DvdStrategy ) *DvdNameContext {
	obj := new(DvdNameContext)
	obj.dvdStrategy = dns
	return obj
}

func (this *DvdNameContext) FormatDvdNames( namesIn []string , args ...interface{}) []string {
	replacementIn:= ""
	if len(args) > 0 {
		replacementIn = args[0].(string)
	}
	namesOut := make([]string, len(namesIn), cap(namesIn))
	for i := 0 ; i < len(namesOut); i += 1 {
		namesOut[i] = this.dvdStrategy.FormatDvdName(namesIn[i], replacementIn)
	}
	return namesOut
}
