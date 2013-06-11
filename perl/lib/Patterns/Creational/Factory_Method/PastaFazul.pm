package Patterns::Creational::Factory_Method::PastaFazul;

use Moo;
extends 'Patterns::Creational::Factory_Method::Soup';

sub BUILDARGS
{
   {
      soupName => "Pasta Fazul",
      soupIngredients => [
        "1 Pound tomatos",
        "1/2 cup pasta",
        "1/2 cup diced carrots",
        "1 cup tomato juice",
      ]
    }
}

1;
