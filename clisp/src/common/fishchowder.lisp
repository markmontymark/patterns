(defclass fishchowder
   (soup)
   ())

(defmethod initialize-instance :after ((this fishchowder) &key)
   (setf (slot-value this 'name) "FishChowder")
   (setf (slot-value this 'ingredients) (list
        "1 Pound Fresh fish"
        "1 cup fruit or vegetables"
        "1/2 cup milk"
        "1/4 cup butter"
        "1/4 cup chips"
	)))
