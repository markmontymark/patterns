package Patterns::Creational::Factory_Method::HonoluluClamChowder;

use Moo;
extends 'Patterns::Creational::Factory_Method::ClamChowder';

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
