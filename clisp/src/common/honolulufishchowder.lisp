(defclass honolulufishchowder
   (fishchowder)
   ())

(defmethod initialize-instance :after ((this honolulufishchowder) &key)
   (setf (slot-value this 'name) "OpakapakaFishChowder")
   (setf (slot-value this 'ingredients) (list
        "1 Pound Fresh Opakapaka Fish"
        "1 cup pineapple chunks"
        "1/2 cup coconut milk"
        "1/4 cup SPAM"
        "1/4 cup taro chips"
	)))
