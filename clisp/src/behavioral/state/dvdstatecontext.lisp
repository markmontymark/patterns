(defclass DvdStateContext () 
	((name 
		:initarg :name 
		:initform (make-instance 'DvdStateNameStars)
		:accessor :name
	))
)

(defmethod show-name 
	((ctx DvdStateContext) 
		(letters string) )
 	(dsn-show-name (:name ctx) ctx letters)
)
