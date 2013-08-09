
# Ruby 1.9.1 GoF patterns

# Testing

I'm using Perl's `prove` and judofyr's Tapper gem for running the t/\*.t tests thru a TAP parser

## Setup

	git clone git@github.com:judofyr/tapper.git
	cd tapper
	gem build tapper.gemspec
	sudo gem install --local tapper-0.0.1.gem
	
	
## Running the tests

	git clone git@github.com:markmontymark/patterns.git
	cd patterns/ruby
	make
	make test



