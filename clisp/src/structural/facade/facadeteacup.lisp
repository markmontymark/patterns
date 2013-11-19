(defclass facade-tea-cup 
	()
	((tea-bag-is-steeped :accessor :tea-bag-is-steeped :initarg :tea-bag-is-steeped :initform nil)
	 (wah-wah :accessor :wah-wah :initarg :wah-wah)
	 (tb :accessor :tea-bag :initarg :tea-bag)))

(defmethod steep-tea-bag
	((this facade-tea-cup))
	(cond
		((and (:tea-bag this)
		 (and (:wah-wah this)
		 (and (:water-is-boiling (:wah-wah this)))))
		 (setf (:tea-bag-is-steeped this) t))
		(t 
         (setf (:tea-bag-is-steeped) nil))))

(defmethod add-tea-bag 
	((this facade-tea-cup)
	 (tb facade-tea-bag))
	(setf (:tea-bag this) tb))

(defmethod add-water
	((this facade-tea-cup)
	 (w facade-water))
	(setf (:wah-wah this) w))
   
(defmethod to-string
	((this facade-tea-cup))
	(cond
		((:tea-bag-is-steeped this)
			"A nice cuppa tea!")
		(t (concatenate 'string
           "A cup with "
				(cond
					((:wah-wah this)
						(if (water-is-boiling (:wah-wah this)) "boiling water " "cold water "))
					(t "no water "))
				(if (:tea-bag this) "and a tea bag" "and no tea bag")))))
