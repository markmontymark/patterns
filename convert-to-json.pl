#!/perl

use strict;
use warnings;
use File::Slurp;
use JSON::XS;

&convert_to_json($_) for @ARGV;

exit;

sub convert_to_json
{
	my($path) = @_;
	(my $json_path = $path) =~ s/\.[0-9A-Za-z]{1,2,3,4}$/.json/;
	die "Error: File $json_path already exists\n" if -e $json_path;
	my $obj = require $path;
	my $coder = JSON::XS->new->ascii->pretty->allow_nonref;
	File::Slurp::write_file($json_path, $coder->encode($obj) );
}
