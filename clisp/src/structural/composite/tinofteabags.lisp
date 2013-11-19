(defclass tin-of-tea-bags 
	(teabags) ())

(defmethod initialize-instance :after ((this tin-of-tea-bags) &key)
	(setf (slot-value this 'teabaglist) ()))

(defmethod count-teabags
	((this tin-of-tea-bags))
	(let
		((n 0))
		(dolist (tb (:teabaglist this))
         (setf n (+ n (count-teabags tb))))
		n))
   
(defmethod add 
	((this tin-of-tea-bags)
	 (tb teabags))
	(setf (:parent this) tb)
	(push tb (:teabaglist this)))
	
(defmethod drop
	((this tin-of-tea-bags)
	 (tb teabags))
	(setf (:teabaglist this) (remove tb (:teabaglist this))))

