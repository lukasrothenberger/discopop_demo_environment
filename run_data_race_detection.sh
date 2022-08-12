ORIGINAL_DIR=$PWD
cd /home/lukas/git/discopop

timeout 80s python -m discopop_validation --path=${ORIGINAL_DIR} --dep-file=out_dep.txt --ll-file=out_dp_inst.ll --verbose=true --dp-build-path=/home/lukas/git/discopop/build/  --data-race-output=${ORIGINAL_DIR}/data_races.txt --dp-profiling-executable=${ORIGINAL_DIR}/run_dp_maker.sh
