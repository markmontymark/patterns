
(defun range (start end)
	(loop for i from start below end collect i))

(defclass sodasize
	()
	((imp :accessor :imp :initarg :imp)
	 (n :accessor :n)))

(defgeneric pour-soda (sodasize sodaflavor))

(defmethod set-soda-imp 
	((this sodasize))
	(setf (:imp this) (get-the-soda-imp soda-imp-singleton)))

(defmethod get-soda-imp
	((this sodasize))
	(:imp this))

(defmethod pour-soda
   ((this sodasize)
    (flavor sodaflavor))
   (format nil "~{~A~^~}" (map 'list #'(lambda (x)(concatenate 'string "...glug..." (pour flavor))) (range 0 (:n this)))))
   
