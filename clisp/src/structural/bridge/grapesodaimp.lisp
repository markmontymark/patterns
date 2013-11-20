(defclass grapesodaimp
	(sodaflavor) ())

(defmethod pour
	((this grapesodaimp))
	"Delicious Grape Soda!")
