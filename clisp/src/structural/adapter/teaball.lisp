(defclass teaball
	(teabag)
	((looseleaftea :accessor :looseleaftea :initarg :looseleaftea)))

(defmethod initialize-instance :after ((this teaball) &key )
	(setf (slot-value this 'teabag-is-steeped) (:tea-is-steeped (:looseleaftea this))))


(defmethod steep-tea-in-cup
	((this teaball))
	(steep-tea (:looseleaftea this))
	(setf (:teabag-is-steeped this) t))
   
