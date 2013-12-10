(ns patterns.creational.singleton-test
	(:require 
		[clojure.test :refer :all]
		[patterns.creational.singleton :refer :all]
		[common.soups :refer :all])
)

(deftest creational-singleton-test
   (let [
		firstSpoon (make-spoon)
		secondSpoon (make-spoon) 
		a-soup (chickensoup)
		b-soup (pastafazul)
		]

		(testing "First has availability" (is (available firstSpoon)))
		(testing "Second has availability" (is (available secondSpoon)))

		(use-spoon firstSpoon a-soup)

		(testing "After First uses spoon, First has availability" (is (not (available firstSpoon))))
		(testing "After First uses spoon, Second should not have availability" (is (not (available secondSpoon))))

		(return-spoon firstSpoon)

		(testing "First has availability, again" (is (available firstSpoon)))
		(testing "Second has availability, again" (is (available secondSpoon)))

		(use-spoon secondSpoon  b-soup)
		(testing "After Second uses spoon, First should not have availability" (is (not (available firstSpoon))))
		(testing "After Second uses spoon, Second should not have availability" (is (not (available secondSpoon))))

	))


