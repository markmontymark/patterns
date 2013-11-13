(defclass game-info
	(abstract-title-info)
	())
    
(defmethod accept ((this game-info) (visitor title-blurb-visitor))
	(visit visitor this))

