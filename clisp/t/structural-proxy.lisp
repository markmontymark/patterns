(load "src/structural/proxy/package.lisp")
(in-package :structural-proxy)

(lisp-unit:define-test structural-proxy-test
   (let
   ((pot-of-tea (make-instance 'pot-of-tea-proxy)))
   (lisp-unit:assert-equal "Pouring tea" (pour-tea pot-of-tea))))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

