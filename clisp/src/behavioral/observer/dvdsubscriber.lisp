(defclass dvd-subscriber ()
	((name :accessor :name :initarg :name)))

(defmethod ds-new-dvd-release (
	(this dvd-subscriber)
	(ndr dvd-release)
	(subscription-list-name string )
	)
	(format nil "~{~A~^~}"
		(list 
			"Hello " (:name this) 
			" subscriber to the " subscription-list-name 
			" DVD release list. "
			"The new Dvd " 
				(:name ndr) 
			" will be released on " 
				(:relmonth ndr) "/"  
				(:relday ndr)  "/"  
				(:relyear ndr)  "."))
)
   
(defmethod  ds-update-dvd-release (
	(this dvd-subscriber)
	(ndr dvd-release) 
	(subscription-list-name string) 
	)
	(format nil "~{~A~^~}"
       (list "Hello "  (:name this)  
            " subscriber to the "  
            subscription-list-name 
            " DVD release list. "
         "The following DVDs release has been revised: "  
         (:name ndr)  " will be released on "  
         (:relmonth ndr)  "/"  
         (:relday ndr)  "/"  
         (:relyear ndr)  ".")))
