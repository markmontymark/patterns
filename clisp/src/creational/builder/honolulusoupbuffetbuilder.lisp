
(defclass honolulusoupbuffetbuilder
	(soupbuffetbuilder)
	())

(defmethod build-clamchowder 
	((this honolulusoupbuffetbuilder))
	(setf (:clamchowder (:soupbuffet this)) (make-instance 'patterns-common:honoluluclamchowder)))

(defmethod build-fishchowder 
	((this honolulusoupbuffetbuilder))
	(setf (:fishchowder (:soupbuffet this)) (make-instance 'patterns-common:honolulufishchowder)))

(defmethod set-soupbuffet-name
	((this honolulusoupbuffetbuilder))
	(setf (:name (:soupbuffet this)) "Honolulu Soup Buffet"))
