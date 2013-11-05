(defclass DvdStateNameExclaim (DvdStateName) ())
(defmethod dsn-show-name ( (d DvdStateNameExclaim) (c DvdStateContext) (s string) )
	(setf (:name c) (make-instance 'DvdStateNameStars))
	(substitute #\!  #\  (copy-seq s) :count 1)
)

