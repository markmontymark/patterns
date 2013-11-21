(load "src/common/package.lisp")
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
	(:soupbuffet bldr))

(lisp-unit:define-test creational-builder-test
   (let
		((boston (createSoupBuffet (make-instance 'bostonsoupbuffetbuilder)))
		 (honolu (createSoupBuffet (make-instance 'honolulusoupbuffetbuilder))))

		(print 'patterns-common:soupbuffet)	
		(lisp-unit:assert-equal 
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the " (:name boston) (patterns-common:todays-soups boston)))

		(lisp-unit:assert-equal 
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the " (:name honolu) (patterns-common:todays-soups honolu)))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

