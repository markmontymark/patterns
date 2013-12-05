(defclass bostonfishchowder
   (fishchowder)
   ())

(defmethod initialize-instance :after ((this bostonfishchowder) &key)
   (setf (slot-value this 'name) "ScrodFishChowder")
   (setf (slot-value this 'ingredients) (list
       "1 Pound Fresh Scrod"
       "1 cup corn"
       "1/2 cup heavy cream"
       "1/4 cup butter"
       "1/4 cup potato chips"
	)))
