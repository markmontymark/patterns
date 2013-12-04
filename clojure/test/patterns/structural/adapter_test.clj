(ns patterns.structural.adapter-test
	(:require
      [clojure.test :refer :all]
      [patterns.structural.adapter :refer :all])
   (:import (patterns.structural.adapter teabag teaball looseleaftea)))

(deftest structural-adapter-test
	(let [
		 a-teabag (make-teabag)
		 some-looseleaf (make-looseleaftea)
		 a-teaball (make-teaball some-looseleaf) ]

	(testing "Can steep-tea-bag with a teabag" 
		(is (= true (:teabag-is-steeped (steep-tea-bag a-teabag)))))

	(testing "Can steep-tea-bag with a teaball" 
		(is (= true (:teabag-is-steeped (steep-tea-bag a-teaball)))))

	))

