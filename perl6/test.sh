#!/bin/sh

## TODO: get this to work:   p6prove -e perl6 -lrv t/

## For now (ick)...

perl6 t/03-behavioral-interpreter.t
#perl6 t/09-behavioral-strategy.t
perl6 t/10-behavioral-visitor.t
