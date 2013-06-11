package Patterns::Creational::Factory_Method::VegetableSoup;

use Moo;
extends 'Patterns::Creational::Factory_Method::Soup';

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
