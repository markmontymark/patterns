
(defclass DvdStateNameStars (DvdStateName)
	((starCount 
		:initform 0
		:accessor :starCount))
)

(defmethod dsn-show-name ( (d DvdStateNameStars) (c DvdStateContext) (s string) )
	(incf (:starCount (:name c)))
	(when (> (:starCount (:name c) ) 1)
		(setf (:name c) (make-instance 'DvdStateNameExclaim)))
	(substitute #\*  #\  (copy-seq s))
)
