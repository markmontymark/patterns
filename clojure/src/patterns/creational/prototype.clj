(ns patterns.creational.prototype )

(def utensil-class
  {:get-name 
    (fn [this] (str (:name this)))})

(def salad-spoon
  (merge utensil-class 
    {:name "Salad Spoon" }))

(def soup-spoon
  (merge utensil-class 
    {:name "Soup Spoon" }))

(def salad-fork
  (merge utensil-class 
    {:name "Salad Fork"}))

(defmacro call [this method & xs]
  `(let [this# ~this] ((~method this#) this# ~@xs)))

(defn make-utensil-factory [& {:keys [spoon fork]}]
	{:spoon spoon :fork fork})

(defn make-spoon [factory] (merge {} (:spoon factory)))
(defn make-fork  [factory] (merge {} (:fork  factory)))

