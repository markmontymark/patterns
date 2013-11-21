(defclass soupspoon 
	(utensil) ())

(defmethod initialize-instance :after ((this soupspoon) &key)
	(setf (slot-value this 'name) "Soup Spoon"))
