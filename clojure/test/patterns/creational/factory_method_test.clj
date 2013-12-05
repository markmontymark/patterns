(load "src/common/package.lisp")
(load "src/creational/factory_method/package.lisp")
(in-package :creational-factory-method)

(defun init-soupbuffet (fm)
	(let
		((sb (make-soupbuffet fm)))
		(setf (:name sb) 				(make-buffetname fm))
		(setf (:chickensoup sb) 	(make-chickensoup fm))
		(setf (:clamchowder  sb) 	(make-clamchowder  fm))
		(setf (:fishchowder  sb) 	(make-fishchowder  fm))
		(setf (:minnestrone  sb) 	(make-minnestrone  fm))
		(setf (:pastafazul  sb) 	(make-pastafazul  fm))
		(setf (:tofusoup  sb) 		(make-tofusoup  fm))
		(setf (:vegetablesoup sb) 	(make-vegetablesoup  fm))
		sb))

(lisp-unit:define-test creational-factory-method-test
   (let
		((plain-soupbuffet  (init-soupbuffet (make-instance 'soupfactorymethod)))
		 (boston-soupbuffet (init-soupbuffet (make-instance 'bostonsoupfactorymethod)))
		 (honolu-soupbuffet (init-soupbuffet (make-instance 'honolulusoupfactorymethod))))

		(lisp-unit:assert-equal 
			"At the  Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: ClamChowder Fish Chowder: FishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name plain-soupbuffet) (patterns-common:todays-soups plain-soupbuffet)))

		(lisp-unit:assert-equal 
			"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name boston-soupbuffet) (patterns-common:todays-soups boston-soupbuffet)))

		(lisp-unit:assert-equal 
			"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name honolu-soupbuffet) (patterns-common:todays-soups honolu-soupbuffet)))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

