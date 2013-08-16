package observer


type DvdRelease struct {
   SerialNumber, DvdName string
   Year, Month, Day int
}


func NewDvdRelease(serialNumber string, dvdName string, year int , month int , day int ) *DvdRelease {
	obj := new(DvdRelease)
	obj.SerialNumber = serialNumber
	obj.DvdName = dvdName
	obj.Year = year
	obj.Month = month
	obj.Day = day
	return obj
}

func (this *DvdRelease) UpdateDvdRelease(serialNumber string, dvdName string, year int , month int , day int ) {
	 this.SerialNumber = serialNumber
	 this.DvdName = dvdName
	 this.Year = year
	 this.Month = month
	 this.Day = day
}

func (this *DvdRelease) UpdateDvdReleaseWithObj( to *DvdRelease ) {
	 this.SerialNumber = to.SerialNumber
	 this.DvdName = to.DvdName
	 this.Year = to.Year
	 this.Month = to.Month
	 this.Day = to.Day
}

func (this *DvdRelease) UpdateDvdReleaseDate(year int , month int, day int ) {
	 this.Year = year
	 this.Month = month
	 this.Day = day        
}   
