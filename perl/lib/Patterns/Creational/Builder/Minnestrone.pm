package Patterns::Creational::Builder::Minnestrone;

use Moo;
extends 'Patterns::Creational::Builder::Soup';

sub BUILDARGS
{
   {
      soupName => "Minnestrone",
      soupIngredients => [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1 cup tomato juice",
      ]
    }
}

1;
