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
		((plain-soup-factory (make-instance 'soupfactorymethod))
		 (boston-soup-factory (make-instance 'bostonsoupfactorymethod))
		 (honolu-soup-factory (make-instance 'honolulusoupfactorymethod))
		 (sb))

		(setf sb (make-soupbuffet plain-soup-factory))
		(lisp-unit:assert-equal 
			"At the  Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: ClanChowder Fish Chowder: FishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name sb) (todays-soups sb)))

		(setf sb (make-soupbuffet boston-soup-factory))
		(lisp-unit:assert-equal 
			"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name sb) (todays-soups sb)))

		(setf sb (make-soupbuffet honolu-soup-factory))
		(lisp-unit:assert-equal 
			"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
			(concatenate 'string "At the  " (:name sb) (todays-soups sb)))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

