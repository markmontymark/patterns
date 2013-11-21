(defclass bostonsoupfactorymethod 
	(soupfactorymethod) ())


(defmethod make-buffetname
	((this bostonsoupfactorymethod))
	"Boston Soup Buffet")

(defmethod make-clamchowder
	((this bostonsoupfactorymethod))
	(make-instance 'patterns-common:bostonclamchowder))
	
(defmethod make-fishchowder
	((this bostonsoupfactorymethod))
	(make-instance 'patterns-common:bostonfishchowder))
	
