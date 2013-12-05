(ns common)

(defn bostonclamchowder []
	{:name "QuahogChowder" :ingredients [
        "1 Pound Fresh Quahogs" "1 cup corn" "1/2 cup heavy cream"
        "1/4 cup butter" "1/4 cup potato chips" ]})

(defn bostonfishchowder []
	{:name "ScrodFishChowder" :ingredients [
       "1 Pound Fresh Scrod" "1 cup corn" "1/2 cup heavy cream"
       "1/4 cup butter" "1/4 cup potato chips" ]})

(defn chickensoup []
	{:name "ChickenSoup" :ingredients [
        "1 Pound diced chicken" "1/2 cup rice" "1 cup bullion"
        "1/16 cup butter" "1/4 cup diced carrots"]})

(defn clamchowder []
	{:name "ClamChowder" :ingredients [
        "1 Pound Fresh Clams" "1 cup fruit or vegetables" "1/2 cup milk"
        "1/4 cup butter" "1/4 cup chips"]})

(defn fishchowder []
	{:name "FishChowder" :ingredients [
        "1 Pound Fresh fish" "1 cup fruit or vegetables" "1/2 cup milk"
        "1/4 cup butter"
        "1/4 cup chips"
	]})
(defn honoluluclamchowder []
	{:name " PacificClamChowder" :ingredients [
        "1 Pound Fresh Pacific Clams" "1 cup pineapple chunks" "1/2 cup coconut milk"
        "1/4 cup SPAM" "1/4 cup taro chips" ]})

(defn honolulufishchowder []
	{:name "OpakapakaFishChowder" :ingredients [
        "1 Pound Fresh Opakapaka Fish" "1 cup pineapple chunks" "1/2 cup coconut milk"
        "1/4 cup SPAM" "1/4 cup taro chips" ]})

(defn minnestrone []
	{:name "Minnestrone" :ingredients [
        "1 Pound tomatos" "1/2 cup pasta" "1 cup tomato juice" ]})

(defn pastafazul []
	{:name "Pasta Fazul" :ingredients [
        "1 Pound tomatos" "1/2 cup pasta" "1/2 cup diced carrots"
        "1 cup tomato juice" ]})

(defn tofusoup []
	{:name "Tofu Soup" :ingredients [
        "1 Pound tofu" "1 cup carrot juice" "1/4 cup spirolena" ]})

(defn vegetablesoup []
	{:name "Vegetable Soup" :ingredients [
        "1 cup bullion" "1/4 cup carrots" "1/4 cup potatoes" ]})

(defn soup-to-string  [soup]
	(interpose " " (list (:ingredients soup) (:name soup) )))
