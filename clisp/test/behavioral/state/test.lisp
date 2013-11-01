(load (compile-file "src/behavioral/state/package.lisp"))

(in-package :behavioral-state)

(ql:quickload :lisp-unit)
(ql:quickload behavioral/state)

(define-test test-state 
	(let ctx = (make-instance 'DvdStateContext)
		(assert-equal (
			ctx.ShowName 
				"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")
				"Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies")
		(assert-equal (
			ctx.ShowName 
				"Jay and Silent Bob Strike Back")
				"Jay*and*Silent Bob Strike Back")
		(assert-equal (
			ctx.ShowName 
				"Buffy The Vampire Slayer Season 2")
				"Buffy!The Vampire Slayer Season 2")
		(assert-equal (
			ctx.ShowName 
				"The Sopranos Season 2")
				"The*Sopranos Season 2")
			
	)      
)
