package Patterns::Creational::Builder::TofuSoup;

use Moo;
extends 'Patterns::Creational::Builder::Soup';

sub BUILDARGS
{
   {
      soupName => "Tofu Soup",
      soupIngredients => [
        "1 Pound tofu",
        "1 cup carrot juice",
        "1/4 cup spirolena",
      ]
    }
}

1;
