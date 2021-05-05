#!/bin/sh
set -x
ghc -o $1/main $1/main.hs && ./$1/main
