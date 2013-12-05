(defclass vegetablesoup
   (soup)
   ())

(defmethod initialize-instance :after ((this vegetablesoup) &key)
   (setf (slot-value this 'name) "Vegetable Soup")
   (setf (slot-value this 'ingredients) (list
        "1 cup bullion"
        "1/4 cup carrots"
        "1/4 cup potatoes"
	)))

