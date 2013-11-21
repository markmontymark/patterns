(defclass bostonsoupfactory 
	(abstractsoupfactory)
	())

(defmethod initialize-instance :after ((this bostonsoupfactory) &key)
	(setf (slot-value this 'location) "Boston"))

(defmethod make-clamchowder ((this bostonsoupfactory))
	(make-instance 'patterns-common:bostonclamchowder))

(defmethod make-fishchowder ((this bostonsoupfactory))
	(make-instance 'patterns-common:bostonfishchowder))

