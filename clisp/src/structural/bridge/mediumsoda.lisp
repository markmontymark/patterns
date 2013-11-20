(defclass mediumsoda 
	(sodasize)
	())

(defmethod initialize-instance :after ((this mediumsoda) &key)
   (setf (slot-value this 'n) 2))


;(defmethod pour-soda
;	((this mediumsoda)
;	 (flavor sodaflavor))
;	(format nil "~A~^ ~}~" map 'list #'(lambda ()(list "...glug..." (pour-soda flavor)))))
