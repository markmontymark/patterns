(defclass teabags
	()
	((teabaglist :accessor :teabaglist :initform nil)
	 (parent :accessor :parent :initarg :parent :initform nil)
	 (name :accessor :name :initarg :name)))

(defgeneric count-teabags  (teabags))
(defgeneric add  (teabagsthis teabagsthat))
(defgeneric drop (teabagsthis teabagsthat))
