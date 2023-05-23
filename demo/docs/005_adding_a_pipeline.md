# Adding a pipeline to the Launchpad

The Launchpad allows you to create a preconfigured set of Nextflow pipelines that are ready to be executed on any Compute Environment that has been added to a given Workspace. This allows users to launch pipelines and to customize the appropriate pipeline-level parameters without needing to worry about the complexities of the underlying compute infrastructure.

## Adding the nf-core/rnaseq pipeline

For this walkthrough, we will add the [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline to the Launchpad.

Click on the `Add Pipeline` button and specify:

- **Name**: `nf-core-rnaseq-yeast`
- **Description**: `nf-core/rnaseq pipeline configured for yeast data`
    - [*Optional*] Free text summary of the pipeline that may be useful to users when selecting a pipeline to launch. 
- **Labels**: `yeast`
    - [*Optional*] Labels allow you to categorize the pipeline according to arbitrary criteria (e.g. reference genome version) that may help users to select the appropriate pipeline for their analysis within the Launchpad.
- **Compute Environment**: `seqera_aws_ireland_fusionv2_nvme`
    - Select an existing Compute Environment that has already been added to the Workspace. In this case, it is an AWS Batch Compute Environment in Ireland that has been pre-configured to use Fusion version 2.
- **Pipeline to launch**: `https://github.com/nf-core/rnaseq`
    - The Platform allows you to select any public or private git repository containing Nextflow source code.
- **Revision number**: `3.14.0`
    - When you provide the **Pipeline to launch**, the Platform will search all of the available tags and branches withing the upstream pipeline repository and render a dropdown to select the appropriate version. Selecting a specific version is very important for reproducibility, and should ensure generating the same results.
- **Config profiles**: `test`
    - [*Optional*] The Platform allows you to select a profile that has been defined within the Nextflow pipeline. All nf-core pipelines have a `test` profile that is associated with a minimal test dataset that is used to run the pipeline on heavily sub-sampled input data for the purposes of CI/CD and to quickly confirm that the pipeline runs on any given infrastructure. The `test` profile of the nf-core/rnaseq pipeline was created using yeast data which is why we have added that particular annotatio in the **Labels** section.
- **Pipeline parameters**:
    - [*Optional*] You can set any custom pipeline parameters in this section that will be prepopulated when users launch the pipeline from the Launchpad. For example, you can set the path to local reference genomes so users don't have to worry about locating these files when launching the pipeline.
- **Pre-run script**:
    - [*Optional*] You can define Bash code that executes before the pipeline launches in the same environment where Nextflow runs. Pre-run scripts are useful for defining executor settings, troubleshooting as well as defining a specific version of Nextflow via the `NXF_VER` environment variable.

Once you have populated the appropriate settings, click the `Add` button and this pipeline will become available for other users in the same Workspace to launch within the preconfigured compute infrastructure.

![Adding nf-core/rnaseq pipeline](assets/sp-cloud-add-rnaseq.gif)

![Adding pipeline parameters](assets/sp-cloud-pipeline-params.gif)

![Specify NF version in pre-run script](assets/sp-cloud-pre-run-options.gif)
