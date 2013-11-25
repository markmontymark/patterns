(ns patterns.behavioral.command
   (:require [clojure.string :as str])
)

(defmulti execute :command)
(defn cmd-remove-char [ch] {:command :remover :to-remove ch})
(defn cmd-replace-char [from to] {:command :replacer :from from :to to})

(defmethod execute :remover [cmd string]
	(str/replace string (:to-remove cmd) ""))

(defmethod execute :replacer [cmd string]
	(str/replace string (:from cmd) (:to cmd)))

(defn stars-off [string]
	(execute (cmd-replace-char "*" " ") string))

(defn stars-on [string]
	(execute (cmd-replace-char " " "*") string))
