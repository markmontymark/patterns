gem "minitest"

require "minitest/autorun"
require "./src/Structural/Proxy/PotOfTeaProxy.rb"

class TestProxy < Minitest::Test

def setup
	@theproxy = PotOfTeaProxy.new
end

def test_that_proxy_can_pour
	assert_equal "Pouring tea", @theproxy.pourTea
end

end
