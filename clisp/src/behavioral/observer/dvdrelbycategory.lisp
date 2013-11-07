(defclass dvd-rel-by-category ()
	(
		(name :accessor :category :initarg :category)
		(subscribers :accessor :subscribers :initform ())
		(releases :accessor :releases :initform ())
	)
)

(defmethod add-subscriber 
	( (this dvd-rel-by-category) (sub dvd-subscriber))
	(push sub (:subscribers this)))
   
(defmethod remove-subscriber
	( (this dvd-rel-by-category) (sub dvd-subscriber))
	(let ((x (:subscribers this))
			(removeditem (remove sub (:subscribers this))))
		(setf (:subscribers this) (remove sub (:subscribers this)))
		removeditem))
   
(defmethod new-dvd-release
	((this dvd-rel-by-category)
		(dr dvd-release))
	(push dr (:releases this))
	(notify-subscribers-of-new-dvd this dr))
   
(defmethod update-dvd
	((this dvd-rel-by-category)
	 (dr dvd-release))
	(let 
		((is-dvd-updated nil))
		(dolist (my-dr (:releases this))
			(cond
           ((string-equal (:serialNumber dr) (:serialNumber my-dr))
				(remove my-dr (:releases this))
				(push dr (:releases this))
				(setf is-dvd-updated t))))
       (if is-dvd-updated 
           (notify-subscribers-of-update this dr)
           (new-dvd-release this dr))))

   
(defmethod notify-subscribers-of-new-dvd
	((this dvd-rel-by-category) (dr dvd-release) )
	(format nil "~{~A~^  ~}"
		(map 'list #'(lambda (x) 
			(ds-new-dvd-release x dr (:category this))) 
		(:subscribers this))))


(defmethod notify-subscribers-of-update
	((this dvd-rel-by-category) (dr dvd-release))
	(format nil "~{~A~^  ~}"
		(map 'list #'(lambda (x) 
			(ds-update-dvd-release x dr (:category this))) 
		(:subscribers this))))
