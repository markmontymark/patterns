use v5.016;
use strict;
use warnings;
use Test::More tests => 10;

BEGIN{ use_ok 'Patterns::Behavioral::Observer'};

my $btvs = new Patterns::Behavioral::Observer::DvdReleaseByCategory("Buffy the Vampire Slayer");
my $simpsons = new Patterns::Behavioral::Observer::DvdReleaseByCategory("The Simpsons");  
my $sopranos = new Patterns::Behavioral::Observer::DvdReleaseByCategory("The Sopranos");
my $xfiles = new Patterns::Behavioral::Observer::DvdReleaseByCategory("The X-Files");
ok( ref $btvs);
ok( ref $simpsons);
ok( ref $sopranos);
ok( ref $xfiles);

my $jsopra = new Patterns::Behavioral::Observer::DvdSubscriber("Junior Soprano");
my $msimps = new Patterns::Behavioral::Observer::DvdSubscriber("Maggie Simpson");
my $rgiles = new Patterns::Behavioral::Observer::DvdSubscriber("Rupert Giles");
my $smulde = new Patterns::Behavioral::Observer::DvdSubscriber("Samantha Mulder");
my $wrosen = new Patterns::Behavioral::Observer::DvdSubscriber("Willow Rosenberg");


ok( ref $jsopra );
ok( ref $msimps );
ok( ref $rgiles );
ok( ref $smulde );
ok( ref $wrosen );

$btvs->addSubscriber($rgiles);
$btvs->addSubscriber($wrosen);  
$simpsons->addSubscriber($msimps);
$sopranos->addSubscriber($jsopra);
$xfiles->addSubscriber($smulde);
$xfiles->addSubscriber($wrosen);

my $btvsS2 = new Patterns::Behavioral::Observer::DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11);
my $simpS2 = new Patterns::Behavioral::Observer::DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9);
my $soprS2 = new Patterns::Behavioral::Observer::DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
my $xfilS5 = new Patterns::Behavioral::Observer::DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1);

$btvs->newDvdRelease($btvsS2);
$simpsons->newDvdRelease($simpS2);
$sopranos->newDvdRelease($soprS2);
$xfiles->newDvdRelease($xfilS5);

$xfiles->removeSubscriber($wrosen);
$xfilS5->updateDvdReleaseDate(2002, 5, 14);


$xfiles->updateDvd($xfilS5);

done();
