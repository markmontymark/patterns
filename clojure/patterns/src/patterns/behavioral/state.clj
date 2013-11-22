(ns patterns.behavioral.state
;  (:gen-class)
)

(defmulti area :Shape)
(defn rect [wd ht] {:Shape :Rect :wd wd :ht ht})
(defn circle [radius] {:Shape :Circle :radius radius})
(defmethod area :Rect [r]
    (* (:wd r)  (:ht r)))
(defmethod area :Circle [c]
    (* (. Math PI)  (* (:radius c)  (:radius c))))
(defmethod area :default [x] :oops)
;(def r (rect 4 13))
;(def c (circle 12))

