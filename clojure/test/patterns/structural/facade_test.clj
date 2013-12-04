(ns patterns.structural.facade-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.facade :refer :all]
   ))


(deftest structural-facade-test
   (let [tea-cup (make-a-cuppa)]
		(testing "Can make a cuppa tea with facade/fn" 
			(is (= "A nice cuppa tea!" (to-string tea-cup))))
))

