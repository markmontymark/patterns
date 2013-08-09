
require "tapper"

require_relative "../blib/Structural/Flyweight.rb"

$flavors = [];
$tables = [];
$ordersMade = 0;    
$teaFlavorFactory = TeaFlavorFactory.new();

def takeOrders(flavorIn, table)
	$flavors[$ordersMade] = $teaFlavorFactory.getTeaFlavor(flavorIn)
	$tables[$ordersMade] =  TeaOrderContext.new(table)
	$ordersMade += 1
end

Tapper.test "that_proxy_can_pour" do
	takeOrders("chai", 2);    
	takeOrders("chai", 2);
	takeOrders("camomile", 1);
	takeOrders("camomile", 1);
	takeOrders("earl grey", 1);
	takeOrders("camomile", 897);
	takeOrders("chai", 97);
	takeOrders("chai", 97);
	takeOrders("camomile", 3);
	takeOrders("earl grey", 3);
	takeOrders("chai", 3);
	takeOrders("earl grey", 96);
	takeOrders("camomile", 552);
	takeOrders("chai", 121);
	takeOrders("earl grey", 121);

	(0..($ordersMade-1)).each do |i|
		$flavors[i].serveTea($tables[i]);
	end

	Tapper.assert_equal "total teaFlavor objects made: #{$teaFlavorFactory.getTotalTeaFlavorsMade}", 'total teaFlavor objects made: 3', "Test total tea flavors made";
end

Tapper.done

