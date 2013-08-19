package iterator


//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)

type DvdList struct {  
   titles []string
   titleCount int
   arraySize int
}

func NewDvdList () *DvdList {
	obj := new(DvdList)
	obj.titles = make([]string,0)
	obj.titleCount = 0
	return obj
}
    
func (this *DvdList) count() int {
	return this.titleCount
}
   
func (this *DvdList) append (titleIn string) {
	this.titles = append( this.titles , titleIn )
	this.titleCount++
}
   
func (this *DvdList) delete(titleIn string) bool {
	foundI := -1
   for i, v := range this.titles {
		if titleIn == v {
			foundI = i
			break;
		}
	}
	if foundI != -1 {
		this.titles[foundI] = this.titles[len(this.titles)-1]
		this.titles = this.titles[:len(this.titles)-1]
		this.titleCount--
		//this.titles = append( this.titles[:foundI], this.titles[(foundI+1):] )
		return true
	}
	return false
}
   
   
func (this *DvdList ) CreateIterator() *innerIterator {
	return newInnerIterator(this)
}
   
   
   //note: 
   //  This example shows the Concrete Iterator as an inner class.
   //  The Iterator Pattern in GoF does allow for multiple types of 
   //  iterators for a given list or "Aggregate".  This could be 
   //  accomplished with multiple Iterators in multiple inner classes.
   //  The createIterator class would then have multiple variations.
   //  This, however, assumes that you will have a limited number of
   //  iterator variants - which is normally the case.  If you do want
   //  more flexibility in iterator creation, the iterators should not
   //  be in inner classes, and perhaps some sort factory should be 
   //  employed to create them.
   //
type innerIterator struct {
	currentPosition int
	list *DvdList
}

func newInnerIterator (list *DvdList) *innerIterator {
	obj := new(innerIterator)
	obj.currentPosition = 0
	obj.list = list
	return obj
}

func (this *innerIterator) First () {
	this.currentPosition = 0
}

func (this *innerIterator) Next() {
	if this.currentPosition < this.list.titleCount {
		this.currentPosition++
	}
}
       
func (this *innerIterator) HasNext() bool {
	return this.currentPosition < this.list.titleCount
}
       
func (this *innerIterator) CurrentItem() string {
	return this.list.titles[this.currentPosition]
}
