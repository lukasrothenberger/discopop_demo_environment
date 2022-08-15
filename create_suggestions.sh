HOME_DIR=$PWD
# change to discopop directory
cd /root/discopop

python -m discopop_explorer --path=$HOME_DIR --dep-file=out_dep.txt --dp-build-path=/root/discopop/build --json=$HOME_DIR/original_suggestions.json
