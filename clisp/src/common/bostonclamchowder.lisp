(defclass bostonclamchowder
   (clamchowder)
   ())

(defmethod initialize-instance :after ((this bostonclamchowder) &key)
   (setf (slot-value this 'name) "QuahogChowder")
   (setf (slot-value this 'ingredients) (list
        "1 Pound Fresh Quahogs"
        "1 cup corn"
        "1/2 cup heavy cream"
        "1/4 cup butter"
        "1/4 cup potato chips"
	)))
