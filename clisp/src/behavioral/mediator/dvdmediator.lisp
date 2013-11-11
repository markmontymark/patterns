(defclass dvdmediator
	()
	((upper :accessor :upper :type dvduppercasetitle)
	 (lower :accessor :lower :type dvdlowercasetitle)))

(defmethod change-title 
   ((this dvdmediator) 
    (dvdup dvduppercasetitle))
	(reset-title (:lower this) (:title dvdup)))

(defmethod change-title 
   ((this dvdmediator) 
    (dvdlower dvdlowercasetitle))
	(reset-title (:upper this) (:title dvdlower)))

