(defclass facade-cuppa-maker 
	()
	((tea-bag-is-steeped :accessor :tea-bag-is-steeped)))
    
(defmethod make-a-cuppa
	( (this facade-cuppa-maker))
	(let
		((cup (make-instance 'facade-tea-cup))
		(bag (make-instance 'facade-tea-bag))
		(water (make-instance 'facade-water)))
		(add-tea-bag cup bag)
		(boil-water water)
		(add-water cup water)
      (steep-tea-bag cup)
       cup))
