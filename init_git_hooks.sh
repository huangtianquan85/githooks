#!/bin/sh

git config --local core.hooksPath .githooks
cp .githooks/engine_conf ./

echo "===== All Done, Enjoy! ====="