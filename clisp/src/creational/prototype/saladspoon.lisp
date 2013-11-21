
(defclass saladspoon 
	(utensil) ())

(defmethod initialize-instance :after ((this saladspoon) &key)
	(setf (slot-value this 'name) "Salad Spoon"))
