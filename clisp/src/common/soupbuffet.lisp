(defclass soupbuffet
	()
	((name :accessor :name)
	 (chickensoup   :accessor :chickensoup)
	 (clamchowder   :accessor :clamchowder)
	 (fishchowder   :accessor :fishchowder)
	 (minnestrone   :accessor :minnestrone)
	 (pastafazul    :accessor :pastafazul)
	 (tofusoup      :accessor :tofusoup)
	 (vegetablesoup :accessor :vegetablesoup)))
   
(defmethod todays-soups
	((this soupbuffet))
	(concatenate 'string
		" Today's Soups!  "
		" Chicken Soup: " (:name (:chickensoup this))
      " Clam Chowder: " (:name (:clamchowder  this))
      " Fish Chowder: " (:name (:fishchowder  this))
      " Minnestrone: " (:name (:minnestrone  this))
      " Pasta Fazul: " (:name (:pastafazul  this))
      " Tofu Soup: " (:name (:tofusoup  this))
      " Vegetable Soup: " (:name (:vegetablesoup  this))
	))
