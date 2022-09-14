#!/bin/sh

git config --local core.hooksPath .githooks
cp .githooks/<engine_config> ./

echo "===== All Done, Enjoy! ====="