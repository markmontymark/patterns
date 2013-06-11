package Patterns::Creational::Builder::PastaFazul;

use Moo;
extends 'Patterns::Creational::Builder::Soup';

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
