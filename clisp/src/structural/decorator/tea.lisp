(defclass tea   
	()
	((tea-is-steeped :accessor :tea-is-steeped :initform nil)))

(defgeneric steep-tea (tea))
