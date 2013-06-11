package Patterns::Creational::Abstract_Factory::BostonFishChowder;

use Moo;
extends 'Patterns::Creational::Abstract_Factory::FishChowder';

sub BUILDARGS
{
   {
       soupName => "ScrodFishChowder",
       soupIngredients => [
       "1 Pound Fresh Scrod",
       "1 cup corn",
       "1/2 cup heavy cream",
       "1/4 cup butter",
       "1/4 cup potato chips",
      ]
    }
}


1;
