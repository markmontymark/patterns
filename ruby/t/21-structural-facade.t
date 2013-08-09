

require "tapper"
require "Structural/Facade"

extend Tapper


test  "Test tea cup facade " do
	cuppaMaker = FacadeCuppaMaker.new;
	teaCup = cuppaMaker.makeACuppa();
	assert_equal "#{teaCup}" ,'A nice cuppa tea!'
end

done
