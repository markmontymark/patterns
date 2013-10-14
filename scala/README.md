# Patterns (scala version)

##  Dev - getting Scala

	sudo apt-get install scala

Gives you scala, scalac, scaladoc, and scalap 


## Dev - using vim

I didn't have vim syntax highlighting support for Scala, so did this to get it:

	git clone git@github.com:derekwyatt/vim-scala.git
	cd vim-scala
	tar cf vim-scala.tar after doc indent ftdetect ftplugin syntax
	mv vim-scala.tar ~/.vim
	tar xf vim-scala.tar

## Dev - resources

### scala

	http://docs.scala-lang.org/tutorials/tour/tour-of-scala.html

### sbt

	http://www.scala-sbt.org/release/docs/Getting-Started/index.html

####	continuous compile

	cd src/main/scala
	$ sbt
	>  ~ compile

	## keep this term open and visible, then
	## in another term, edit files in src/main/scala/
	## on file save, watch sbt compile term re-compile sources



