(load "src/behavioral/command/package.lisp")
(in-package :behavioral-command)

(lisp-unit:define-test behavioral-command-test

 (let 
	((jayAndBob (make-instance 'dvd :name "Jay and Silent Bob Strike Back"))
	 (spongeBob (make-instance 'dvd :name "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"))
	 (starsOff  (make-instance 'command-stars-off))
	 (starsOn   (make-instance 'command-stars-on))
	)

	(lisp-unit:assert-equal
		(execute starsOn jayAndBob)
		"DVD: Jay*and*Silent*Bob*Strike*Back")

	(lisp-unit:assert-equal
		(execute starsOn spongeBob)
		"DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies")

	(lisp-unit:assert-equal
		(:name jayAndBob)
		"Jay*and*Silent*Bob*Strike*Back")
	(lisp-unit:assert-equal
		(execute starsOff spongeBob)
		"DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")
   )
)

(lisp-unit:write-tap (lisp-unit:run-tests :all))
