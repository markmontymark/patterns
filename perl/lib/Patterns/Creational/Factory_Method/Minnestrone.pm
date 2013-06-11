package Patterns::Creational::Factory_Method::Minnestrone;

use Moo;
extends 'Patterns::Creational::Factory_Method::Soup';

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
