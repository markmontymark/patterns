(defclass saladfork 
	(utensil) ())

(defmethod initialize-instance :after ((this saladfork) &key)
	(setf (slot-value this 'name) "Salad Fork"))
