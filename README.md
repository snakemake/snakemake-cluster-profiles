# snakemake-cluster-profiles

This repository is a collection of institution- and cluster-specific profiles
in order to provide sensible default parameters for getting your pipeline 
running on a particular compute setup. 

## Using an existing profile

The `snakemake --profile <your_profile>` parameter can be to load a profile 
that is present in `$HOME/.config/snakemake` or `/etc/xdg/snakemake` on Linux. 
In the future, you can specify a profile present in the `profiles` directory
of this repository, e.g. `snakemake --profile dkfz` and it will be automatically 
loaded. 

These profiles can be further augmented using `--workflow-profiles` for 
individual workflows. These can be also searched for in `profiles/default`
in the working directory or next to the Snakefile. 

For interacting with clusters, one of the [Snakemake executor plugins](https://snakemake.github.io/snakemake-plugin-catalog/index.html) can be used. This can be specified with the `executor: ` field in config.yaml. 

For further information regarding profiles, please check the [relevant documentation](https://snakemake.readthedocs.io/en/stable/executing/cli.html#profiles). 

## Contributing 

Before contributing a profile, please check with the system administrator of 
your institution's compute system as they may want to obscure certain
parameters for privacy-related reasons. 

A profile should be a directory with at least two files: a `config.yaml` which 
specifies the executor, default resources, cores, jobs, and additional 
parameters, and a README.md which explains any additional instructions, e.g. 
global variables to be exported in your shell profile, and names the 
maintainers of the profile and their Github handles. 

## Testing 

Please test that your profile works on your institution's compute setup. 
More details relating to testing will be added here shortly. 

## Current profiles

| Cluster | Location | Maintainers | Github |
|---------|----------|------------|---------|
| Deutsches Krebsforschungszentrum (DKFZ) | Heidelberg, DE | David Koppstein, David Laehnemann | [@dkoppstein](https://github.com/dkoppstein/)<br>[@dlaehnemann](https://github.com/dlaehnemann) |
| BinAC 2 | Tübingen, DE | Felix Bartusch | [@fbartusch](https://github.com/fbartusch) |
| Bonn Analysis Facility (BAF) | Bonn, DE |  | [@lukavom](https://github.com/lukavom) |
| Mogon | Mainz, DE | Christian Meesters | [@cmeesters](https://github.com/cmeesters) |
