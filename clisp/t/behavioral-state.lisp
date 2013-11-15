(load "src/behavioral/state/package.lisp")
(in-package :behavioral-state)

(lisp-unit:define-test behavioral-test-state 
	(let ((ctx (make-instance 'DvdStateContext)))

		(lisp-unit:assert-equal 
			(show-name ctx
				"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")
				"Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies")

		(lisp-unit:assert-equal 
			(show-name ctx
				"Jay and Silent Bob Strike Back")
				"Jay*and*Silent Bob Strike Back")

		(lisp-unit:assert-equal 
			(show-name ctx
				"Buffy The Vampire Slayer Season 2")
				"Buffy!The Vampire Slayer Season 2")

		(lisp-unit:assert-equal 
			(show-name ctx
				"The Sopranos Season 2")
				"The*Sopranos Season 2")
	)      
)

(lisp-unit:write-tap (lisp-unit:run-tests :all))

