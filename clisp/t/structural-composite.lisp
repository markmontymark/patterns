(load "src/structural/composite/package.lisp")
(in-package :structural-composite)

(lisp-unit:define-test structural-composite-test
   (let
   ((tin-of-tea-bags (make-instance 'tin-of-tea-bags :name "tin of tea bags"))
    (small-tin-of-tea-bags (make-instance 'tin-of-tea-bags :name "small tin of tea bags"))
	 (teabag-1 (make-instance 'one-tea-bag :name "tea bag 1"))
	 (teabag-2 (make-instance 'one-tea-bag :name "tea bag 2"))
	 (teabag-3 (make-instance 'one-tea-bag :name "tea bag 3")))
   (add tin-of-tea-bags teabag-1)
   (add tin-of-tea-bags teabag-2)
	(lisp-unit:assert-equal 2 (num-bags tin-of-tea-bags))

   (add small-tin-of-tea-bags teabag-3)

	(lisp-unit:assert-equal 1 (num-bags small-tin-of-tea-bags))

   (add tin-of-tea-bags small-tin-of-teabags)

	(lisp-unit:assert-equal 3 (num-bags tin-of-tea-bags))

	(drop tin-of-tea-bags teabag-2)

	(lisp-unit:assert-equal 3 (num-bags tin-of-tea-bags))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

