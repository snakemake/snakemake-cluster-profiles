# Mogon-NHR & Mogon-KI

The clusters "Mogon-NHR" and "Mogon-KI" are set up as a SLURM multicluster.

The "NHR" part is a tier 2 cluster in the German HPC association. It is focussed on supporting High Energy Physics applications (primarily particle physics and QCD) and Bioinformatics. Applications from other fields are also possible. The "KI" part is a tier 3 university cluster and open for scientists from all fields.

For general information and support, please consult the official homepage:

> https://hpc.uni-mainz.de/

# General Remarks

This profile shows two files: A general profile (`config.yaml`) and a `partitions.yaml`. When using the SLURM executor administrators can install both at a general local (e.g. under `/etc`). Users and administrators alike may set the environment variables `SNAKEMAKE_PROFILE` to the `config.yaml` and `SNAKEMAKE_SLURM_PARTITIONS` to the `partitions.yaml` file to shorten the command line. So, both files can be used globally or individually.

A third file is added defining the minimal software stack, if not provided as a module file. 

Due to quota limitations in the home directory, we recommend using `--sdm conda` only with `--conda-prefix /lustre/project/...`. Using `--conda-cleanup-pkgs=cache` to automatically clean up is also recommended.

We recommend setting `--default-resources slurm_account=<account> slurm_cluster=mogonnhr` for users of Mogon-NHR and `--default-resources slurm_account=<account> slurm_cluster=mogonki`, respectively.

## Maintainer

| | |
|---|---|
| **Name** | Christian Meesters |
| **Email** | meesters@uni-mainz.de |
| **GitHub** | @cmeesters |
