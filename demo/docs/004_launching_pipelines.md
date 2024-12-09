## Launchpad

Each workspace has a Launchpad that allows users to easily create and share Nextflow pipelines that can be executed on any infrastructure supported by the Platform, including all public clouds and most HPC schedulers. A Launchpad pipeline consists of a pre-configured workflow repository, compute environment, and launch parameters.

Users can create their own pipelines, share them with others on the Launchpad, or tap into over a hundred community pipelines available on nf-core and other sources.

/// details | Advanced
type: info

Adding a new pipeline is relatively simple and can be included as part of the demonstration. See [Add a Pipeline](./005_adding_a_pipeline.md).
///

## Launch the nf-core/rnaseq pipeline

### 1. Go to Launchpad

Navigate to the Launchpad in the `seqeralabs/showcase` workspace and select **Launch** next to the `nf-core-rnaseq` pipeline to open the launch form.

/// details | Click to show animation
type: example

![Launch a pipeline](assets/sp-cloud-launch-form.gif)
///

The launch form consists of General config, Run parameters, and Advanced options sections to specify your run parameters before execution, and an execution summary.

### 2. Launch form: General config

The General config section contains the following fields:

- Pipeline to launch: The pipeline Git repository name or URL. For nf-core/rnaseq, this is prefilled and cannot be edited.
- Revision number: A valid repository commit ID, tag, or branch name. For nf-core/rnaseq, this is prefilled.
- (Optional) Config profiles: One or more configuration profile names to use for the execution. This pipeline will use the `test` profile.
- Workflow run name: An identifier for the run, pre-filled with a name made of an adjective and the name of a scientist. This can be customized.
- (Optional) Labels: Assign new labels to the run in addition to `yeast`.
- Compute environment: Select an existing workspace compute environment. This pipeline will use the `seqera_aws_ireland_fusionv2_nvme` compute environment.
- Work directory: The (cloud or local) file storage path where pipeline scratch data is stored. Platform will create a scratch sub-folder if only a cloud bucket location is specified. This pipeline will use the `s3://seqeralabs-showcase` bucket.

### 3. Launch form: Run parameters

After specifying the General config, the Run parameters page appears, allowing you to fine-tune pipeline execution. This form is generated from the pipeline's `nextflow_schema.json` file, which defines pipeline parameters in a simple JSON-based schema. This schema enables pipeline developers to easily adapt their Nextflow pipelines for execution via the Seqera Platform web interface.

For more information on automatically building the parameter schema for any Nextflow pipeline, refer to the ["Best Practices for Deploying Pipelines with the Seqera Platform"](https://seqera.io/blog/best-practices-for-deploying-pipelines-with-seqera-platform/) blog.

You can enter Run parameters in three ways:

- **Input form view**: Enter text or select attributes from lists, and browse input and output locations with Data Explorer.
- **Config view**: Edit raw configuration text directly in JSON or YAML format.
- **Upload params file**: Upload a JSON or YAML file containing run parameters.

Specify the following parameters for nf-core/rnaseq:

- `input`: Most nf-core pipelines have standardized the usage of the `input` parameter to specify an input samplesheet that contains paths to any input files (such as FastQ files) and any additional metadata required to run the pipeline. The `input` parameter can accept a file path to a samplesheet in the S3 bucket selected through Data Explorer (such as `s3://my-bucket/my-samplesheet.csv`). Alternatively, the Seqera Platform has a Datasets feature that allows you to upload structured data like samplesheets for use with Nextflow pipelines. For the purposes of this demonstration, select **Browse** next to the `input` parameter and search and select a pre-loaded dataset called "rnaseq_samples".

/// details | Click to show animation
type: example

![Input parameters](assets/sp-cloud-launch-parameters-input.gif)
///

/// details | Advanced
type: info

Users can upload their own samplesheets and make them available as a dataset in the 'Datasets' tab. See [Add a dataset](./006_adding_a_dataset.md).
///

- `outdir`:

  Most nf-core pipelines have standardized the usage of the `outdir` parameter to specify where the final results created by the pipeline are published. `outdir` must be different for each different pipeline run. Otherwise, your results will be overwritten. Since we want to publish these files to an S3 bucket, we must provide the directory path to the appropriate storage location (such as `s3://my-bucket/my-results).

  For the `outdir` parameter, specify an S3 directory path manually, or select **Browse** to specify a cloud storage directory using Data Explorer.

  /// details | Click to show animation
  type: example

  ![Output parameters](assets/sp-cloud-run-parameters.gif)
  ///

Users can easily modify and specify other parameters to customize the pipeline execution through the parameters form. For example, in the **Read trimming options** section of the parameters page, change the `trimmer` to select `fastp` in the dropdown menu, instead of `trimgalore`.

![Read trimming options](./assets/trimmer-settings.png)

### 4. Launch form: Advanced options

The Advanced options allow you to specify additional settings for the pipeline execution. These include:

- **Resource labels**: Use resource labels to tag the computing resources created during the workflow execution.
- **Nextflow config**: Specify Nextflow configuration options to customize task execution. For example, you can specify an error handling strategy to continue the workflow even if some tasks fail.
- **Pipeline secrets**: Pipeline secrets store keys and tokens used by workflow tasks to interact with external systems. Enter the names of any stored user or workspace secrets required for the workflow execution.

After you have filled the necessary launch details, select **Launch**.
