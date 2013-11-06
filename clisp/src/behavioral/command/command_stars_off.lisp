(defclass command-stars-off (command-interface) ())

(defmethod execute ( (d command-stars-off) (v dvd) )
	(concatenate 'string "DVD: " (substitute #\   #\* (:name v))))

