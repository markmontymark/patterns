(ns patterns.structural.adapter
   (:require [clojure.string :as str]))

;interfaces

(defprotocol TeaSteeper (steep-tea [tea]))
(defprotocol TeaBagSteeper (steep-tea-in-cup [teabag]))

;looseleaftea
(defrecord looseleaftea [tea-is-steeped]
	TeaSteeper (steep-tea [tea] (assoc tea :tea-is-steeped true)))

;looseleaftea ctor
(defn make-looseleaftea [ & tea-is-already-steeped]
	(let [is-steeped (or tea-is-already-steeped nil)]
		(->looseleaftea is-steeped)))

;teabag
(defrecord teabag [teabag-is-steeped]
	TeaBagSteeper (steep-tea-in-cup [bag] 
		(assoc bag :teabag-is-steeped true)))

;teabag ctor
(defn make-teabag [ & teabag-is-already-steeped]
	(let [is-steeped (or teabag-is-already-steeped nil)]
		(->teabag is-steeped)))

;teaball
(defrecord teaball[tea teabag-is-steeped]
	TeaBagSteeper (steep-tea-in-cup [tball] 
		(assoc tball :teabag-is-steeped 
			(:tea-is-steeped (steep-tea (:tea tball))))))

;teaball ctor
(defn make-teaball [tea]
	(->teaball tea (:tea-is-steeped tea)))

(defn steep-tea-bag [ball-or-bag]
	(steep-tea-in-cup ball-or-bag))
