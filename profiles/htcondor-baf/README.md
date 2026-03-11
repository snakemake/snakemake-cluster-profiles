Example profile for work on BAF (Bonn Analysis Facility). To be used with the [snakemake-htcondor-executor-plugin](https://github.com/htcondor/snakemake-executor-plugin-htcondor).

The location of a tarball with the snakemake environment is currently hardcoded in the jobscript.sh. You should provide your own and adjust the jobscript. Then move the 
jobscript to the directory from where you call snakemake.
