
(defclass supersizesoda 
	(sodasize)
	())

(defmethod initialize-instance :after ((this supersizesoda) &key)
   (setf (slot-value this 'n) 5))


;(defmethod pour-soda
	;((this supersizesoda)
	 ;(flavor sodaflavor))
	;(format nil "~A~^ ~}~" map 'list #'(lambda ()(list "...glug..." (pour-soda flavor)))/)
