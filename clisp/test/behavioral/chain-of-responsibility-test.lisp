(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/chain_of_responsibility/package.lisp")
(in-package :behavioral-chain-of-responsibility)

(lisp-unit:define-test behavioral-chain-of-responsibility-test
   (let* (
		(cat (make-instance 'dvd-category :category "Comedy" :top-category-title "Ghost World"))
		(sub-cat (make-instance 'dvd-category :parent cat :category "Childrens"))
		(sub-sub-cat (make-instance 'dvd-category :parent sub-cat :category "Aquatic" :top-category-title "Sponge Bob Squarepants"))
		)

      (lisp-unit:assert-equal
         (get-all-categories cat) "Comedy")
      (lisp-unit:assert-equal
         (get-top-title cat) "Ghost World")

      (lisp-unit:assert-equal
         (get-all-categories sub-cat) "Comedy/Childrens")
      (lisp-unit:assert-equal
         (get-top-title sub-cat) "Ghost World")

      (lisp-unit:assert-equal
         (get-all-categories sub-sub-cat) "Comedy/Childrens/Aquatic")
      (lisp-unit:assert-equal
         (get-top-title sub-sub-cat) "Sponge Bob Squarepants")

   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)
