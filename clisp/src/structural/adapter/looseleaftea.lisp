(defclass looseleaftea
	()
	((tea-is-steeped :accessor :tea-is-steeped :initarg :tea-is-steeped :initform nil)))
    
(defmethod steep-tea
	((this looseleaftea))
	(setf (:tea-is-steeped this) t))
