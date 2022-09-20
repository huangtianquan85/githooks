curl -LJO https://github.com/huangtianquan85/githooks/archive/refs/heads/main.zip
unzip githooks-main.zip
mv githooks-main/.githooks ./
mv githooks-main/init.md ./
mv githooks-main/init_git_hooks.sh ./
rm -rf githooks-main*

echo "===== move engine config file ====="

engine_conf=$1
perl -pi -e "s|engine_conf|$engine_conf|" init_git_hooks.sh
mv $engine_conf .githooks
echo "\n$engine_conf" >> .gitignore
git add .
git commit -m 'deploy githooks'