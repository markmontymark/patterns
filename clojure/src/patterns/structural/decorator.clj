(ns patterns.structural.decorator
   (:require [clojure.string :as str]))

(declare steep-chai)

(defprotocol TeaSteeper (steep-tea [tea]))

(defrecord chai-tea [tea ingredients]
	TeaSteeper (steep-tea [some-chai]
		(steep-chai some-chai)))

(defn make-chai-tea [tea & optional-ingredients]
	(let [ingreds (or optional-ingredients [
        "bay leaf" "cinnamon stick" "ginger"
        "honey" "soy milk" "vanilla bean"])]
	(->chai-tea tea ingreds)))

(defn steep-chai-ingredients [some-chai]
	(str/join ", " (map #(str % " is steeping") (:ingredients some-chai))))

(defn steep-chai [some-chai]
	(str (steep-tea (:tea some-chai)) ", "
		(steep-chai-ingredients some-chai)))

(defrecord tea-leaves [tea-is-steeped]
	TeaSteeper (steep-tea [tea]
		;(swap! (:tea-is-steeped tea) (fn [_] true))
		(swap! (:tea-is-steeped tea) (constantly true))
		"tea leaves are steeping"))
(defn make-tea-leaves [] (->tea-leaves (atom nil)))
