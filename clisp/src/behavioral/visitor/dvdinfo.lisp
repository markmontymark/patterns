(defclass dvd-info
	(abstract-title-info)
	((star :accessor :star :initarg :star)
	 (region :accessor :region :initarg :region)))
    
(defmethod accept ((this dvd-info) (visitor title-blurb-visitor))
	(visit visitor this))
