(defclass pastafazul
   (soup)
   ())

(defmethod initialize-instance :after ((this pastafazul) &key)
   (setf (slot-value this 'name) "Pasta Fazul")
   (setf (slot-value this 'ingredients) (list
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1/2 cup diced carrots",
        "1 cup tomato juice",
	)))
