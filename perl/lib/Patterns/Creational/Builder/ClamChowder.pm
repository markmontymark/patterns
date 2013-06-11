package Patterns::Creational::Builder::ClamChowder;

use Moo;
extends 'Patterns::Creational::Builder::Soup';

sub BUILDARGS
{
   {
      soupName => "ClanChowder",
      soupIngredients => [
        "1 Pound Fresh Clams",
        "1 cup fruit or vegetables",
        "1/2 cup milk",
        "1/4 cup butter",
        "1/4 cup chips",
      ]
    }
}

1;
