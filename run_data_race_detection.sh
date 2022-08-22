ORIGINAL_DIR=$PWD
cd /home/jovyan/discopop

timeout 80s python -m discopop_validation --path=${ORIGINAL_DIR} --ll-file=out_dp_inst.ll --verbose=true --dp-build-path=/home/jovyan/discopop/build/  --data-race-output=${ORIGINAL_DIR}/data_races.txt --dp-profiling-executable=${ORIGINAL_DIR}/run_dp_maker.sh --pet-dump-file=${ORIGINAL_DIR}/pet_dump.json
