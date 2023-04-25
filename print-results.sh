docker run -it -v $PWD:/home db-project sh -c "echo '------ BENCHMARK RESULTS FOR CYPHER QUERIES -----' \
                                                && python3 res2md.py project_cypher/results_ldbc.txt \
                                                && python3 res2md.py project_cypher/results_lsqb.txt \
						&& python3 res2md.py project_cypher/results_LUBM.txt \
						&& python3 res2md.py project_cypher/results_BSBM.txt \
						&& python3 res2md.py project_cypher/results_SP2B.txt \
						&& python3 res2md.py project_cypher/results_tcph.txt \
						&& python3 res2md.py project_cypher/results_gmark.txt"
