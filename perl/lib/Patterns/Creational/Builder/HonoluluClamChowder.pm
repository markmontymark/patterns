package Patterns::Creational::Builder::HonoluluClamChowder;

use Moo;
extends 'Patterns::Creational::Builder::ClamChowder';

sub BUILDARGS
{
   {
      soupName => "PacificClamChowder",
      soupIngredients => [
        "1 Pound Fresh Pacific Clams",
        "1 cup pineapple chunks",
        "1/2 cup coconut milk",
        "1/4 cup SPAM",
        "1/4 cup taro chips",
      ]
    }
}

1;
