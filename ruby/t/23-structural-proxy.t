require "tapper"

require "Structural/Proxy/PotOfTeaProxy"

extend Tapper

test "that_proxy_can_pour" do
	theproxy = PotOfTeaProxy.new
	assert_equal "Pouring tea", theproxy.pourTea
end

done
