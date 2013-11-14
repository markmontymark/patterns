
(defclass game-info 
	(title-info) ())

(defmethod get-title-blurb 
	( (this game-info))
	(concatenate 'string 
		"Game: " (:title this)))

(defmethod get-region 
	((this game-info)) 
	" ")

