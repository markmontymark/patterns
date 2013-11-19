(defclass teaflavor
	(teaorder)
	((flavor :accessor :flavor :initarg :flavor )))

(defmethod serve-tea 
	((this teaflavor)
	 (ctx teaordercontext))
	(concatenate 'string 
		"Serving tea flavor " 
		(:flavor this) 
		" to table number " 
		(format nil "~a" 
			(:table ctx))))
