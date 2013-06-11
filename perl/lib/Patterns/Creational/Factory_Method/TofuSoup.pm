package Patterns::Creational::Factory_Method::TofuSoup;

use Moo;
extends 'Patterns::Creational::Factory_Method::Soup';

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
