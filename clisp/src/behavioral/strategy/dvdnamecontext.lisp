(defclass dvdnamecontext
	()
	((strategy :accessor :strategy :initarg :strategy)))

(defmethod format-dvd-names 
	((this dvdnamecontext)
	 (names list))
	(map 'list #'
		(lambda (x) 
			(format-dvdname (:strategy this) x)) 
		names))
