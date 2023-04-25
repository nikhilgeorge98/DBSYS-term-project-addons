# DBSYS-term-project-addons
Add-ons for hypertree width measurement of Cypher queries using github.com/jessicapham/DBSYS-term-project

This is intended to be an add-on repository for the purpose of determining hypertree widths of graph queries from the following benchmarks:
- bsbm
- lubm
- sp2b
- gmark
- tcph

The above benchmarks are in addition to the following benchmarks in the original repository:
- ldbc
- lsqb

To run hypertree width on the benchmarks:
1. Clone the original repo: https://github.com/jessicapham/DBSYS-term-project
2. Clone this repo: https://github.com/nikhilgeorge98/DBSYS-term-project-addons
3. Navigate to the original repository's root: `cd ./DBSYS-term-project`
4. Copy all add-ons to root directory: `rsync -av -f "- .*" ../DBSYS-term-project-addons/* .`
5. Fetch all the data from submodules: `git submodule update --init --recursive`
6. Build Docker image: `./build.sh`
7. Run benchmarks: `./treewidths.sh`
8. The benchmark results are saved in .txt files in the project_cypher directory and outputted in the format of a markdown table to the console. The results can be saved to an .md file by running: `./treewidths.sh > results.md`
9. To obtain the benchmark results again without re-computing the treewidths: `./print-results.sh`
