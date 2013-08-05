#!/bin/sh

## TODO: get this to work:   p6prove -e perl6 -lrv t/

## For now (ick)...

perl6 t/01-chain_of_responsibility.t
perl6 t/03-behavioral-interpreter.t
perl6 t/04-behavioral-iterator.t
perl6 t/06-behavioral-memento.t
#perl6 t/09-behavioral-strategy.t
perl6 t/10-behavioral-visitor.t
