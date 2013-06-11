package Patterns::Creational::Builder::HonoluluFishChowder;

use Moo;
extends 'Patterns::Creational::Builder::FishChowder';

sub BUILDARGS
{
   {
      soupName => "OpakapakaFishChowder",
      soupIngredients => [
        "1 Pound Fresh Opakapaka Fish",
        "1 cup pineapple chunks",
        "1/2 cup coconut milk",
        "1/4 cup SPAM",
        "1/4 cup taro chips",
      ]
    }
}

1;
