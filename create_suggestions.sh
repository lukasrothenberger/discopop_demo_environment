HOME_DIR=$PWD
# change to discopop directory
cd /home/jovyan/discopop

python -m discopop_explorer --path=$HOME_DIR --dep-file=out_dep.txt --dp-build-path=/home/jovyan/discopop/build --json=$HOME_DIR/original_suggestions.json
