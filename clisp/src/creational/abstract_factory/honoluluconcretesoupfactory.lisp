(defclass honolulusoupfactory 
	(abstractsoupfactory)
	())

(defmethod initialize-instance :after ((this honolulusoupfactory) &key)
	(setf (slot-value this 'location) "Honolulu"))

(defmethod make-clamchowder ((this honolulusoupfactory))
	(make-instance 'patterns-common:honoluluclamchowder))

(defmethod make-fishchowder ((this honolulusoupfactory))
	(make-instance 'patterns-common:honolulufishchowder))

