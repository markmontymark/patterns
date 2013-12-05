(defclass honoluluclamchowder
   (clamchowder)
   ())

(defmethod initialize-instance :after ((this honoluluclamchowder) &key)
   (setf (slot-value this 'name) "PacificClamChowder")
   (setf (slot-value this 'ingredients) (list
        "1 Pound Fresh Pacific Clams"
        "1 cup pineapple chunks"
        "1/2 cup coconut milk"
        "1/4 cup SPAM"
        "1/4 cup taro chips"
	)))

