
(defclass honolulusoupfactorymethod 
	(soupfactorymethod) ())


(defmethod make-buffetname
	((this honolulusoupfactorymethod))
	"Honolulu Soup Buffet")

(defmethod make-clamchowder
	((this honolulusoupfactorymethod))
	(make-instance 'patterns-common:honoluluclamchowder))
	
(defmethod make-fishchowder
	((this honolulusoupfactorymethod))
	(make-instance 'patterns-common:honolulufishchowder))
	
