(defclass one-tea-bag 
	(teabags) ())

(defmethod count-teabags  ((this one-tea-bag)) 1)
(defmethod add  ((this one-tea-bag) (tb teabags)) nil)
(defmethod drop ((this one-tea-bag) (tb teabags)) nil)
