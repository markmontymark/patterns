(defclass facade-water
	()
	((water-is-boiling :accessor :water-is-boiling)))
   
(defmethod boil-water
	((this facade-water))
	(setf (:water-is-boiling this) t)) 
   
