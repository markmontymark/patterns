package Patterns::Creational::Builder::ChickenSoup;
use Moo;
extends 'Patterns::Creational::Builder::Soup';

sub BUILDARGS
{
   {
      soupName => "ChickenSoup",
      soupIngredients => [
        "1 Pound diced chicken",
        "1/2 cup rice",
        "1 cup bullion",
        "1/16 cup butter",
        "1/4 cup diced carrots",
      ]
    }
}

1;
