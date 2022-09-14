#!/bin/sh

git config --local core.hooksPath .githooks
cp .githooks/<engine_config> ./

echo "===== 工程初始化完成，可正常打开 <engine> 编辑器 ====="