use strict;
use warnings;
use v5.016;

use Test::More tests => 2;

BEGIN{use_ok 'Patterns::Structural::Flyweight'};


my @flavors;
my @tables;

my $ordersMade = 0;    
my $teaFlavorFactory;

sub takeOrders
{
	my($flavorIn, $table)  = @_;
	$flavors[$ordersMade] = $teaFlavorFactory->getTeaFlavor($flavorIn);
	$tables[$ordersMade++] = new Patterns::Structural::Flyweight::TeaOrderContext($table);
}

$teaFlavorFactory = new Patterns::Structural::Flyweight::TeaFlavorFactory();

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

for (0..($ordersMade-1))
{
	$flavors[$_]->serveTea($tables[$_]);
}  
say(" ");       
is("total teaFlavor objects made: " . $teaFlavorFactory->teasMade(), 'total teaFlavor objects made: 3','Test total tea flavors made');

done();

