(defclass soupfactorymethod 
	() ())

(defmethod make-soupbuffet
	((this soupfactorymethod))
	(make-instance 'patterns-common:soupbuffet))

(defmethod make-chickensoup
	((this soupfactorymethod))
	(make-instance 'patterns-common:chickensoup))

(defmethod make-tofusoup
	((this soupfactorymethod))
	(make-instance 'patterns-common:tofusoup))

(defmethod make-vegetablesoup
	((this soupfactorymethod))
	(make-instance 'patterns-common:vegetablesoup))

(defmethod make-clamchowder
	((this soupfactorymethod))
	(make-instance 'patterns-common:clamchowder))

(defmethod make-fishchowder
	((this soupfactorymethod))
	(make-instance 'patterns-common:fishchowder))

(defmethod make-minnestrone
	((this soupfactorymethod))
	(make-instance 'patterns-common:minnestrone))

(defmethod make-pastafazul
	((this soupfactorymethod))
	(make-instance 'patterns-common:pastafazul))

(defmethod make-buffetname
	((this soupfactorymethod))
	"Soup Buffet")
