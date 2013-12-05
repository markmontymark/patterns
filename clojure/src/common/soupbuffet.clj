(ns common)

(defprotocol SoupOfTheDayBuffet (todays-soups [this]))
(defrecord soupbuffet [
	name 
	chickensoup
	clamchowder
	fishchowder
	minnestrone
	pastafazul
	tofusoup
	vegetablesoup]
	SoupOfTheDayBuffet(todays-soups [this]
	(str
		" Today's Soups!  "
		" Chicken Soup: " (:name (:chickensoup this))
      " Clam Chowder: " (:name (:clamchowder  this))
      " Fish Chowder: " (:name (:fishchowder  this))
      " Minnestrone: "  (:name (:minnestrone  this))
      " Pasta Fazul: "  (:name (:pastafazul  this))
      " Tofu Soup: "    (:name (:tofusoup  this))
      " Vegetable Soup: " (:name (:vegetablesoup this ))
	)))
