(defclass title-blurb-visitor-long 
	(title-blurb-visitor)
	())

(defmethod visit ((this title-blurb-visitor-long) (info book-info))
	(setf (:blurb this) (concatenate 'string 
		"LB-Book: " (:title info) 
		", Author: " (:author info))))

(defmethod visit ((this title-blurb-visitor-long) (info dvd-info))
	(setf (:blurb this) (concatenate 'string 
		"LB-DVD: " (:title info) 
		", starring " (:star info) 
		", encoding region: " (:region info))))
   
(defmethod visit ((this title-blurb-visitor-long) (info game-info))
	(setf (:blurb this) (concatenate 'string 
		"LB-Game: " (:title info))))

