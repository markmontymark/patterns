(defclass dvdlistiterator 
	()
	((dvdlist :accessor :dvdlist :initarg :dvdlist)
	 (currentPosition :accessor :currentPosition :initform 0)
	))
  
(defmethod reset ((this dvdlistiterator))
	(setf (:currentPosition this) 0))
       
(defmethod next ((this dvdlistiterator))
	(when (< (:currentPosition this) (:titlecount (:dvdlist this))) 
		(incf (:currentPosition this))))
       
(defmethod done ((this dvdlistiterator))
	(>= (:currentPosition this) (:titlecount (:dvdlist this))))

(defmethod current-item ((this dvdlistiterator))
	(subseq (:titles (:dvdlist this)) (:currentPosition this) (+ 1 (:currentPosition this))))
