package Patterns::Structural::Facade::FacadeCuppaMaker;

use Moo;
has teaBagIsSteeped => is => 'rw';
    
sub makeACuppa 
{
	my $cup = new Patterns::Structural::Facade::FacadeTeaCup();
	my $teaBag = new Patterns::Structural::Facade::FacadeTeaBag();
	my $water = new Patterns::Structural::Facade::FacadeWater();
	$cup->teaBag($teaBag);
	$water->boil();
	$cup->water($water);
	$cup->steepTeaBag();
   $cup
}

1;
