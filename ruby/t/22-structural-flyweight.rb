

use v6;

use Test;

use lib 'blib/lib';

use Patterns::Structural::Flyweight;


my TeaFlavor @flavors;
my TeaOrderContext @tables;

my $ordersMade = 0;    
my $teaFlavorFactory;

sub takeOrders($flavorIn, $table)
{
	@flavors[$ordersMade] = $teaFlavorFactory.getTeaFlavor($flavorIn);
	@tables[$ordersMade++] =  TeaOrderContext.new($table);
}

$teaFlavorFactory = TeaFlavorFactory.new();

&takeOrders("chai", 2);    
&takeOrders("chai", 2);
&takeOrders("camomile", 1);
&takeOrders("camomile", 1);
&takeOrders("earl grey", 1);
&takeOrders("camomile", 897);
&takeOrders("chai", 97);
&takeOrders("chai", 97);
&takeOrders("camomile", 3);
&takeOrders("earl grey", 3);
&takeOrders("chai", 3);
&takeOrders("earl grey", 96);
&takeOrders("camomile", 552);
&takeOrders("chai", 121);
&takeOrders("earl grey", 121);

for 0..($ordersMade-1)
{
	@flavors[$_].serveTea(@tables[$_]);
}  

is "total teaFlavor objects made: " ~ $teaFlavorFactory.teasMade(), 
	'total teaFlavor objects made: 3',
	"$?FILE Test total tea flavors made";

done();

