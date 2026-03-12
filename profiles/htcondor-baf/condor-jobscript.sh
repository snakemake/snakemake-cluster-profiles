#!/usr/bin/bash
# properties = {properties}
export HOME=$(pwd)
. /etc/profile
ls -l
tar --extract -z --file <PATH TO SNAKEMAKE TARBALL ON SHARED FS>/venv_snakemake.tar.gz
module load miniforge/24.11.2-1-py312
. venv_snakemake/bin/activate


snakemake "$@"
