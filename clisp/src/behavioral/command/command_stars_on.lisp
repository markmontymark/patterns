(defclass command-stars-on (command-interface) ())

(defmethod execute ( (d command-stars-on) (v dvd) )
	(concatenate 'string "DVD: " (setf (:name v) (substitute #\*  #\  (:name v)))))

