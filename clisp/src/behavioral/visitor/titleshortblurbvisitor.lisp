(defclass title-blurb-visitor-short 
	(title-blurb-visitor)
	())

(defmethod visit ((this title-blurb-visitor-short) (info book-info))
	(setf (:blurb this) (concatenate 'string "SB-Book: " (:title info))))

(defmethod visit ((this title-blurb-visitor-short) (info dvd-info))
	(setf (:blurb this) (concatenate 'string "SB-DVD: " (:title info))))
   
(defmethod visit ((this title-blurb-visitor-short) (info game-info))
	(setf (:blurb this) (concatenate 'string "SB-Game: " (:title info))))
