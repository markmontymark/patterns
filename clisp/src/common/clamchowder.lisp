(defclass clamchowder
   (soup)
   ())

(defmethod initialize-instance :after ((this clamchowder) &key)
   (setf (slot-value this 'name) "ClamChowder")
   (setf (slot-value this 'ingredients) (list
        "1 Pound Fresh Clams"
        "1 cup fruit or vegetables"
        "1/2 cup milk"
        "1/4 cup butter"
        "1/4 cup chips"
	)))
