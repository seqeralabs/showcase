# seqeralabs/showcase Demo

This guide provides a walkthrough of a standard Seqera Platform demonstration. The demonstration will describe how to add a pipeline to the Launchpad, launch a workflow with pipeline parameters, monitor a run, and examine the run details in several different parts.

More specifically, this demonstration will focus on using the [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline as an example and executing the workflow on AWS Batch.

## Requirements

- An [AWS Batch Compute Environment created on the Platform](https://docs.seqera.io/platform/23.3.0/compute-envs/aws-batch)
- The [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline repository
- Samplesheet to create a Dataset on the Platform used to run minimal test RNAseq data (see [samplesheet_test.csv](./samplesheet_test.csv) file in this repository)

## Sections

1. [Overview of the Platform](#1-login-to-seqeraio)
2. [Add a Pipeline to the Launchpad](add_a_pipeline.md)
3. [Add a Dataset to Seqera Platform](add_a_dataset.md)
4. [Launch your Pipeline](launch_pipeline.md)
5. [Runs and Monitoring your workflow](monitor_run.md)
6. [Examine the run and task details](run_details.md)
7. [Resume a pipeline run](resume_pipeline.md)
8. [Data Explorer](data_explorer.md)
9. [Optimize your Pipeline](pipeline_optimization.md)

## Walkthrough of demonstration

### 1. Login to seqera.io

Log into Seqera Platform, either through a GitHub account, Google account, or an email address.

If an email address is provided, Seqera Cloud will send an authentication link to the email address to login with.

![Seqera Platform Cloud login](docs/images/sp-cloud-signin.gif)

### 2. Navigate into the seqeralabs/showcase Workspace

All resources in Seqera Platform live inside a Workspace, which in turn belong to an Organisation. Typically, teams of colleagues or collaborators will share one or more workspaces. All resources in a Workspace (i.e. pipelines, compute environments, datasets) are shared by members of that workspace.

Navigate into the `seqeralabs/showcase` Workspace.

![Seqera Labs Showcase Workspace](docs/images/go-to-workspace.gif)

### 3. User settings

# TODO
