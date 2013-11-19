(defclass teaflavorfactory 
	()
	((teas-made :accessor :teas-made :initform 0)
	 (flavors :accessor :flavors :initform ())))

(defmethod get-tea-flavor
	((this teaflavorfactory)
	 (flavor-to-get string))

	(let 
		((found-flavor (find-if #'(lambda(x)(and x (string-equal (:flavor x) flavor-to-get))) (:flavors this))))
		(cond 
			(found-flavor (list found-flavor))
			(t 
				;(setf (cdr (last (:flavors this))) (cons (make-instance 'teaflavor :flavor flavor-to-get) nil))
				(setf found-flavor (make-instance 'teaflavor :flavor flavor-to-get))
				(if (:flavors this)
					(push found-flavor (cdr (last (:flavors this))))
					(setf (:flavors this) (list found-flavor)))
				(incf (:teas-made this))
				(last (:flavors this))))))
