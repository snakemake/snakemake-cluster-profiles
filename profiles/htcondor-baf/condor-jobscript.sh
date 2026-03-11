#!/usr/bin/bash
# properties = {properties}
export HOME=$(pwd)
. /etc/profile
ls -l
tar --extract -z --file /cephfs/user/s6luvomb/venvs/venv_snakemake.tar.gz
module load miniforge/24.11.2-1-py312
. venv_snakemake/bin/activate


snakemake "$@"