(defclass bostonsoupbuffetbuilder
	(soupbuffetbuilder)
	())

(defmethod build-clamchowder 
	((this bostonsoupbuffetbuilder))
	(setf (:clamchowder (:soupbuffet this)) (make-instance 'patterns-common:bostonclamchowder)))

(defmethod build-fishchowder 
	((this bostonsoupbuffetbuilder))
	(setf (:fishchowder (:soupbuffet this)) (make-instance 'patterns-common:bostonfishchowder)))

(defmethod set-soupbuffet-name
	((this bostonsoupbuffetbuilder))
	(setf (:name (:soupbuffet this)) "Boston Soup Buffet"))
