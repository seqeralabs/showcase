# Seqera Platform: Demonstration Walkthrough

## Walkthrough of [Seqera Platform](https://seqera.io/)

![](assets/landing_page.png){ .right .image}

## [:fontawesome-solid-user: Login to Seqera Platform](https://tower.nf/login){ .md-button }

---

## Overview

This guide provides a walkthrough of a standard Seqera Platform demonstration. The demonstration will describe how to add a pipeline to the Launchpad, launch a workflow with pipeline parameters, monitor a Run, and examine the run details in several different parts. The demonstration will also highlight key features such as the Pipeline Optimization, Data Explorer, and Compute Environment creation.

More specifically, this demonstration will focus on using the [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline as an example and executing the workflow on AWS Batch.

---

## Requirements

- A [Seqera Platform Cloud](https://seqera.io/login) account
- Access to a Workspace in Seqera Platform
- :fontawesome-brands-aws: An [AWS Batch Compute Environment created in that Workspace](https://docs.seqera.io/platform/23.3.0/compute-envs/aws-batch)
- The [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline repository
- Samplesheet to create a Dataset on the Platform used to run minimal test RNAseq data (see [samplesheet_test.csv](./samplesheet_test.csv) file in this repository)

---

## Sections

[:material-check-circle:]() [Why use Seqera Platform?](./intro.md) <br/>
[:material-check-circle:]() [Overview of the Platform](./demo_overview.md) <br/>
[:material-check-circle:]() [Add a Pipeline to the Launchpad](./add_a_pipeline.md) <br/>
[:material-check-circle:]() [Add a Dataset to Seqera Platform](./add_a_dataset.md) <br/>
[:material-check-circle:]() [Launch a Pipeline](./launch_pipeline.md) <br/>
[:material-check-circle:]() [Runs and Monitoring your workflow](./monitor_run.md) <br/>
[:material-check-circle:]() [Examine the run and task details](./run_details.md) <br/>
[:material-check-circle:]() [Resume a Pipeline](./resume_pipeline.md) <br/>
[:material-check-circle:]() [Data Explorer](./data_explorer.md) <br/>
[:material-check-circle:]() [Data Studios](./data_studios.md) <br/>
[:material-check-circle:]() [Optimize your Pipeline](./pipeline_optimization.md) <br/>
[:material-check-circle:]() [Automation](./automation.md) <br/>
