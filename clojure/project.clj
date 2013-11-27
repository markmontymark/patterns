
(defproject mrk-patterns "0.0.1-SNAPSHOT"
  :description "Porting Java GoF patterns to Clojure"
  :url "https://github.com/markmontymark/patterns/clojure/"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [
		[org.clojure/clojure "1.5.1"] ]
  :profiles {
		:dev {
			:dependencies [[ring/ring-devel "1.2.0"]]}}
  :test-selectors {
		:default (complement :integration)
      :integration :integration
      :all (fn [_] true)}

  ;:aot [
		;patterns.behavioral.chain_of_responsibility
		;patterns.behavioral.command
		;patterns.behavioral.state
	;]
)
