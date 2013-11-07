(defclass dvd-release 
	() 
	(
		(serialNumber :initarg :serialNumber :accessor :serialNumber)
		(name :initarg :name :accessor :name)
		(relyear :initarg :relyear :accessor :relyear)
		(relmonth :initarg :relmonth :accessor :relmonth)
		(relday :initarg :relday :accessor :relday)
	)
)

   
(defmethod dr-update-dvd-release (
	(this dvd-release) 
	(serialNumber string) 
	(dvdName string)
	(relyear number)
	(relmonth number)
	(relday number) 
	)
	(setf (:serialNumber this) serialNumber)
	(setf (:name this) dvdName)
	(setf (:relyear this) relyear)
	(setf (:relmonth this) relmonth)
	(setf (:relday this) relday) 
   )
   
(defmethod update-dvd-releasedate (
	(this dvd-release)
	(relyear number) 
	(relmonth  number)
	(relday number))
	(setf (:relyear this) relyear)
	(setf (:relmonth this) relmonth)
	(setf (:relday this) relday)        
)
   
