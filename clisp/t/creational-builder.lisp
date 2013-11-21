(load "src/creational/builder/package.lisp")
(in-package :creational-builder)

(defun createSoupBuffet (bldr)
	(build-soupbuffet bldr)
	(set-soupbuffet-name bldr)
	(build-chickenSoup bldr)
	(build-clamchowder bldr)
	(build-fishchowder bldr)
	(build-minnestrone bldr)
	(build-pastafazul bldr)
	(build-tofusoup bldr)
	(build-vegetablesoup bldr)
	(get-soupbuffet bldr))

(lisp-unit:define-test creational-builder-test
   (let
		((boston (createSoupBuffet (make-instance 'boston-soupbuffet-builder)))
		 (honolu (createSoupBuffet (make-instance 'honolulu-soupbuffet-builder))))
		
		(lisp-unit:assert-equal 
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the " (:name boston) (todays-soups boston)))
		(lisp-unit:assert-equal 
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the " (:name honolu) (todays-soups honolu)))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

