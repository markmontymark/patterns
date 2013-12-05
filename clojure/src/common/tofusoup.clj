(defclass tofusoup
   (soup)
   ())

(defmethod initialize-instance :after ((this tofusoup) &key)
   (setf (slot-value this 'name) "Tofu Soup")
   (setf (slot-value this 'ingredients) (list
        "1 Pound tofu"
        "1 cup carrot juice"
        "1/4 cup spirolena"
	)))
