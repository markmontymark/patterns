(defclass minnestrone
   (soup)
   ())

(defmethod initialize-instance :after ((this minnestrone) &key)
   (setf (slot-value this 'name) "Minnestrone")
   (setf (slot-value this 'ingredients) (list
        "1 Pound tomatos"
        "1/2 cup pasta"
        "1 cup tomato juice"
	)))
