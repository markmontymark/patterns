(ns patterns.structural.facade-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.facade :refer :all]
   ))


(deftest structural-facade-test
   (let
   [cuppa-maker (make-facade-cuppa-maker)
    tea-cup (make-a-cuppa cuppa-maker)]
	(testing "" (is (= "A nice cuppa tea!" (to-string tea-cup))))
))

