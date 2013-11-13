(defclass title-blurb-visitor
	()
	( (blurb :accessor :blurb :initarg :blurb)))


(defgeneric visit (title-blurb-visitor book-info))
(defgeneric visit (title-blurb-visitor dvd-info))
(defgeneric visit (title-blurb-visitor game-info))
