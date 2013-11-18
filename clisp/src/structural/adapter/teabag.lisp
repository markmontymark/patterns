(defclass teabag
	()
	((teabag-is-steeped :accessor :teabag-is-steeped :initform nil)))

(defmethod steep-tea-in-cup
	((this teabag))
	(setf (:teabag-is-steeped this) t))
