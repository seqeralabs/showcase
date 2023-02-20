# seqeralabs/showcase Workspace on Nextflow Tower

## Infrastructure as code

Most [Nextflow Tower](https://cloud.tower.nf/) entities such as Pipelines, Compute Environments and Datasets can be exported in JSON format via the [Nextflow Tower CLI](https://github.com/seqeralabs/tower-cli#nextflow-tower-cli). This is very useful for creating infrastructure as code to store the exact configuration options used to create these entities, and to share and track changes over time.

This repository contains JSON representation of the Nextflow Tower entitites that were used to create the `seqeralabs/showcase` Workspace:
- [Compute Environments](compute-envs)
- [Pipelines](pipelines)
- [Datasets](datasets)

## Scripts

The bash scripts required to programatically import and export these entities into Tower via the Tower CLI have also been provided in the [`scripts`](scripts) directory. 

See Tower CLI [usage docs](https://github.com/seqeralabs/tower-cli/blob/master/USAGE.md#usage-examples) for more examples.

### Prerequisites

1. [Nextflow Tower CLI](https://github.com/seqeralabs/tower-cli#1-installation)
2. [`jq`](https://stedolan.github.io/jq/)

### Assumptions

- Tower CLI has been installed and `tw info` has been configured
- `TOWER_API_ENDPOINT` and `TOWER_ACCESS_TOKEN` have been injected into the executing environment
- Credentials have already been set-up in Tower