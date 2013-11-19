(defclass tealeaves 
	(tea) ())

(defmethod steep-tea 
	((this tealeaves))
	(setf (:tea-is-steeped this) t)
	"tea leaves are steeping")
