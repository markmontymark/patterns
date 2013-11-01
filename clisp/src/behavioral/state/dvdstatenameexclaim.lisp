(defclass DvdStateNameExclaim (DvdStateName) ())

(defmethod dsn-show-name ( (d DvdStateNameExclaim) (c DvdStateContext) (s string) )
	(print "in exclaim dsn-show-name")
	(setf (:name c) (make-instance 'DvdStateNameStars))
	(substitute #\!  #\  (copy-seq s))
)

