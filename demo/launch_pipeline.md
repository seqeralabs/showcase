# Launch the nf-core/rnaseq pipeline

## 1. Go to Launchpad

Navigate back to the Launchpad to being executing the newly added nf-core/rnaseq pipeline.

Select 'Launch' next to the pipeline of your choice to open the pipeline launch form.

![Launching a Pipeline](docs/images/sp-cloud-launch-form.gif)

Seqera uses a [nextflow_schema.json](https://github.com/nf-core/rnaseq/blob/master/nextflow_schema.json) file in the root of the pipeline repository to dynamically create a form with the necessary pipeline parameters.

## 2. Overview of the Launch form

All pipelines contain at least these parameters:

**1. Workflow run name:** A unique identifier for the run, pre-filled with a random name. This can be customized.

**2. Labels:** Assign new or existing labels to the run.

**3. Input/output options:** Specify paths to pipeline input datasets, output directories, and other pipeline-specific I/O options. input and outdir are required fields common to all pipelines:

For the 'input' parameter, click on the text box and click on the name of the dataset added in the previous step.

![Input parameters](docs/images/sp-cloud-launch-parameters-input.gif)

For the 'outdir' parameter, specify an S3 directory path manually, or select Browse to specify a cloud storage directory using Data Explorer.

![Output parameters](docs/images/sp-cloud-launch-parameters-outdir.gif)

The remaining fields of the pipeline parameters form will vary for each pipeline, dependent on the parameters specified in the pipeline schema. When you have filled the necessary launch form details, select 'Launch'.
