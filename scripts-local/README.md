# scripts-local

scripts-local is directory of ad-hoc, mostly Perl, scripts for things like source generation, testing.  

## gen-pattern.pl

This script was used to take the content from scripts-local/orig-patterns and split into source files in the top-level c, cxx, java, etc directories.

### Usage:

	# Assuming perl is in your path
	
	git clone https://github.com/markmontymark/patterns.git
	cd patterns
	./scripts-local/gen-patterns.pl scripts-local/orig-patterns
	## creates c/, cxx/, perl/, etc in current working directory


## run-java-tests.pl

This script was used to make sure that the original Java files copied down from Fluffy Cat's Java Design Patterns site compile and run correctly with my Ant script at java/build.xml

### Usage:

	# Assuming perl and java are in your path
	
	git clone https://github.com/markmontymark/patterns.git
	cd patterns
	./scripts-local/gen-patterns.pl scripts-local/orig-patterns
	## creates c/, cxx/, perl/, etc in current working directory
	cd java/
	ant
	cd ../
	./scripts-local/run-java-tests.pl
	## should get lots of test output here... for now, test output is validated

## todo

Now that the run-java-tests.pl successfully finds the jar file and executes all the java tests, we have a baseline to test against when porting the patterns to another language




