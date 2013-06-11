package Patterns::Creational::Abstract_Factory::VegetableSoup;

use Moo;
extends 'Patterns::Creational::Abstract_Factory::Soup';

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
