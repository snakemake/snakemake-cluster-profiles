# Using Snakemake on the DKFZ LSF cluster system

## Maintainers

David Laehnemann @dlaehnemann (original author) and David Koppstein @dkoppstein. The DKFZ cluster is maintained and operated by the ODCF (Omics IT and Data Management Core Facility) in Heidelberg, DE. The organization is also on Github [here](https://github.com/DKFZ-ODCF). 
For cluster-related questions or issues, please use the [contact form](https://www.odcf.dkfz.de#open-contact:cluster). 

## Setting up snakemake 

These are instructions for `snakemake >=v8.0.0`. 

### 1\. installing snakemake and the lsf plugin

Install `snakemake` together with the `lsf` cluster plugin and the `snakedeploy` tool for deploying standardized snakemake workflows (and ensure that mamba is also installed into the environment):

```
conda create -n snakemake_lsf_plugin snakemake snakedeploy snakemake-executor-plugin-lsf conda
```

### 2\. ensuring per-job memory reservation

LSF cluster systems are highly configurable, and ours requires you to set an environment variable for the `snakemake-executor-plugin-lsf` to properly work. So in your `~/.bashrc` set the environment variable by adding the following line:

```
export SNAKEMAKE_LSF_MEMFMT="perjob"
```

Whenever you start a new terminal / `bash` session, you should now have this variable set. You can check, by writing out the variable content with:

```
echo $SNAKEMAKE_LSF_MEMFMT
```

This should print out `perjob`.

Some more detail on the background of this variable can be found here:\
<https://snakemake.github.io/snakemake-plugin-catalog/plugins/executor/lsf.html#clusters-that-use-per-job-memory-requests-instead-of-per-core>

### 3\. set up a snakemake profile for the DKFZ LSF cluster

Create a directory for the `lsf_plugin` profile with:

```
mkdir -p ~/.config/snakemake/lsf_plugin
```

Then download the file `config.yaml` from this github repository folder to the newly created `.config/` directory from above, so that you can find it with:

```
ls ~/.config/snakemake/lsf_plugin/config.yaml
```

### 4\. run a snakemake workflow

In any folder containing a snakemake workflow, you should now be able to run that workflow and automatically submit individual jobs to the LSF cluster system, simply by invoking:

```
conda activate snakemake_lsf_plugin
snakemake --profile lsf_plugin
```

### 5\. (optional) adapt resource requirements per rule (but cluster-wide)

You can adapt the profile that you installed above, especially the resource requirements for individual rules that it contains per default. To that end, simply go and edit the file:

```
nano ~/.config/snakemake/lsf_plugin/config.yaml
```

All options and settings have explanations and links to documentations in comments right above their specification.

