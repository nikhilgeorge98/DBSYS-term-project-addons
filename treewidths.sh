#!/bin/bash

docker run -it -v "$PWD":/home db-project sh -c "cd ./newdetkdecomp/ && make clean && make && cd ../ \
                                                && echo 'Running benchmarks for Cypher queries...' \
                                                && ./run_cypher.sh lsqb \
                                                && ./run_cypher.sh ldbc \
						&& ./run_cypher.sh LUBM \
						&& ./run_cypher.sh BSBM \
						&& ./run_cypher.sh SP2B \
						&& ./run_cypher.sh tpch \
						&& ./run_cypher.sh gmark \
                                                && echo '------ BENCHMARK RESULTS FOR CYPHER QUERIES -----' \
                                                && python3 res2md.py project_cypher/results_ldbc.txt \
                                                && python3 res2md.py project_cypher/results_lsqb.txt \
						&& python3 res2md.py project_cypher/results_LUBM.txt \
						&& python3 res2md.py project_cypher/results_BSBM.txt \
						&& python3 res2md.py project_cypher/results_SP2B.txt \
						&& python3 res2md.py project_cypher/results_tpch.txt \
						&& python3 res2md.py project_cypher/results_gmark.txt"

                                                
