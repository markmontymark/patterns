(defpackage :behavioral-state)

(in-package :behavioral-state)

(defclass DvdStateContext () 
	((name 
		:initarg :name 
		:initform (make-instance 'DvdStateNameStars)
		;:initform (make-instance 'DvdStateNameExclaim)
		:accessor :name
	))
)

(load "src/behavioral/state/dvdstatename.lisp")
(load "src/behavioral/state/dvdstatenamestars.lisp")
(load "src/behavioral/state/dvdstatenameexclaim.lisp")

(defmethod show-name ( (ctx DvdStateContext) (letters string) )
 	(dsn-show-name (:name ctx) ctx letters)
)

(defparameter *actx* (make-instance 'DvdStateContext))
;(print *actx*)
;(print (name *actx*))
;(print (:starCount (name *actx*)))
(print (show-name *actx* "wow wow"))
(print (show-name *actx* "wow wow"))
(print (show-name *actx* "wow wow"))
;(print (dsn-show-name (name *actx*) *actx* "wow wow"))
;(print (dsn-show-name (name *actx*) *actx* "wow wow"))
;(print (dsn-show-name (name *actx*) *actx* "wow wow"))

