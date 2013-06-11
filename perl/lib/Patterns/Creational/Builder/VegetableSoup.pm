package Patterns::Creational::Builder::VegetableSoup;

use Moo;
extends 'Patterns::Creational::Builder::Soup';

sub BUILDARGS
{
   {
      soupName => "Vegetable Sou",
      soupIngredients => [
        "1 cup bullion",
        "1/4 cup carrots",
        "1/4 cup potatoes",
      ]
    }
}


1;
