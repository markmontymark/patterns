use v6;
use Test;

use lib 'blib/lib';

use Patterns::Behavioral::Observer;

my $btvs = DvdReleaseByCategory.new("Buffy the Vampire Slayer");
my $simpsons = DvdReleaseByCategory.new("The Simpsons");  
my $sopranos = DvdReleaseByCategory.new("The Sopranos");
my $xfiles = DvdReleaseByCategory.new("The X-Files");
ok( $btvs.defined , "$?FILE new DvdRelease test");
ok( $simpsons.defined , "$?FILE new DvdRelease test");
ok( $sopranos.defined , "$?FILE new DvdRelease test");
ok( $xfiles.defined , "$?FILE new DvdRelease test");

my $jsopra = DvdSubscriber.new("Junior Soprano");
my $msimps = DvdSubscriber.new("Maggie Simpson");
my $rgiles = DvdSubscriber.new("Rupert Giles");
my $smulde = DvdSubscriber.new("Samantha Mulder");
my $wrosen = DvdSubscriber.new("Willow Rosenberg");


ok( $jsopra.defined , "$?FILE new DvdSubscriber test" );
ok( $msimps.defined , "$?FILE new DvdSubscriber test" );
ok( $rgiles.defined , "$?FILE new DvdSubscriber test" );
ok( $smulde.defined , "$?FILE new DvdSubscriber test" );
ok( $wrosen.defined , "$?FILE new DvdSubscriber test" );

$btvs.addSubscriber($rgiles);
$btvs.addSubscriber($wrosen);  
$simpsons.addSubscriber($msimps);
$sopranos.addSubscriber($jsopra);
$xfiles.addSubscriber($smulde);
$xfiles.addSubscriber($wrosen);

my $btvsS2 = DvdRelease.new("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11);
my $simpS2 = DvdRelease.new("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9);
my $soprS2 = DvdRelease.new("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
my $xfilS5 = DvdRelease.new("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1);

is $btvs.newDvdRelease($btvsS2), "Hello Rupert Giles, subscriber to the Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.
 Hello Willow Rosenberg, subscriber to the Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.
", "$?FILE first newDvdRelease test ";


is $simpsons.newDvdRelease($simpS2), "Hello Maggie Simpson, subscriber to the The Simpsons DVD release list.
The new Dvd The Simpsons Season 2 will be released on 7/9/2002.
" , "$?FILE second newDvdRelease test ";

is $sopranos.newDvdRelease($soprS2), "Hello Junior Soprano, subscriber to the The Sopranos DVD release list.
The new Dvd The Sopranos Season 2 will be released on 11/6/2001.
", "$?FILE third newDvdRelease test ";

is $xfiles.newDvdRelease($xfilS5), "Hello Samantha Mulder, subscriber to the The X-Files DVD release list.
The new Dvd The X-Files Season 5 will be released on 4/1/2002.
 Hello Willow Rosenberg, subscriber to the The X-Files DVD release list.
The new Dvd The X-Files Season 5 will be released on 4/1/2002.
" , "$?FILE fourth newDvdRelease test ";

is $xfiles.removeSubscriber($wrosen), 1, "$?FILE test removing a subscriber";
$xfilS5.updateDvdReleaseDate(2002, 5, 14);

is $xfiles.updateDvd($xfilS5), "Hello Samantha Mulder, subscriber to the The X-Files DVD release list.
The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002.
", "$?FILE update Dvd test";

done();
