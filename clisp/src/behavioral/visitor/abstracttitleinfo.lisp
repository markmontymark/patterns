(defclass abstract-title-info
	()
	(
		(title :accessor :title :initarg :title)))

(defgeneric accept (abstract-title-info title-blurb-visitor))
