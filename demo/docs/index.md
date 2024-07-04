# Seqera Platform: Demonstration Walkthrough

---

## Overview

This guide provides a walkthrough of a standard Seqera Platform demonstration. The demonstration will describe how to add and run a pipeline in the Platform, examine the run details, and highlight key features such as pipeline optimization, Data Explorer, and Data Studios.

The demonstration will focus on using the [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline as an example to execute a Nextflow pipeline on Seqera Cloud via the AWS Batch cloud executor.

<div style="clear: both;"></div>

---

## Requirements


[:fontawesome-solid-computer: Access to Seqera Platform](https://cloud.seqera.io){ .md-button } [:octicons-browser-24: Seqera Main Site](https://seqera.io){ .md-button }

<div style="clear: both;"></div>
:octicons-checkbox-16: [Seqera Cloud](https://cloud.seqera.io/login) account

:octicons-checkbox-16: Access to a workspace in Seqera Cloud

:octicons-checkbox-16: :fontawesome-brands-aws: Access to an [AWS Batch compute environment](https://docs.seqera.io/platform/23.4.0/compute-envs/aws-batch) created in that workspace

:octicons-checkbox-16: Publicly available [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline repository

:octicons-checkbox-16: [Input samplesheet](./samplesheet_test.csv) to run the nf-core/rnaseq pipeline on Seqera Cloud
