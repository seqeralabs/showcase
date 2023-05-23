# Datasets

Most bioinformatics pipelines will require an input of some sort, typically a samplesheet where each row consists of a sample, the location of files for that sample (such as fastq files), and other sample details.

On the Cloud, users might have to upload this samplesheet to a bucket to be used as input to a pipeline, or they will have to retrieve the path to this file on a shared filesystem.

Instead, these samplesheets can be made easily accessible through the 'Datasets' feature on the Platform. Datasets in Seqera Platform allow users to upload a structued CSV or TSV file to a Workspace. They are then used as inputs to pipelines to simplify data management, minimize user data-input errors, and facilitate reproducible workflows.

## 1. Download the nf-core/rnaseq test samplesheet

The [nf-core/rnaseq](https://github.com/nf-core/rnaseq) pipeline works with input datasets (samplesheets) containing sample names, fastq file locations, and indications of strandedness. The Seqera Community Showcase sample dataset for _nf-core/rnaseq_ looks like this:

**Example rnaseq dataset**

<center>

| sample              | fastq_1                              | fastq_2                              | strandedness |
| ------------------- | ------------------------------------ | ------------------------------------ | ------------ |
| WT_REP1             | s3://nf-core-awsmegatests/rnaseq/... | s3://nf-core-awsmegatests/rnaseq/... | reverse      |
| WT_REP1             | s3://nf-core-awsmegatests/rnaseq/... | s3://nf-core-awsmegatests/rnaseq/... | reverse      |
| WT_REP2             | s3://nf-core-awsmegatests/rnaseq/... | s3://nf-core-awsmegatests/rnaseq/... | reverse      |
| RAP1_UNINDUCED_REP1 | s3://nf-core-awsmegatests/rnaseq/... |                                      | reverse      |
| RAP1_UNINDUCED_REP2 | s3://nf-core-awsmegatests/rnaseq/... |                                      | reverse      |
| RAP1_UNINDUCED_REP2 | s3://nf-core-awsmegatests/rnaseq/... |                                      | reverse      |
| RAP1_IAA_30M_REP1   | s3://nf-core-awsmegatests/rnaseq/... | s3://nf-core-awsmegatests/rnaseq/... | reverse      |

</center>

Download the nf-core/rnaseq [samplesheet_test.csv](samplesheet_test.csv) provided in this repository on to your computer.

## 2. Add the Dataset

Go to the 'Datasets' tab and click 'Add Dataset'.

![Adding a Dataset](assets/sp-cloud-add-a-dataset.gif)

Specify a name for the dataset such as 'nf-core-rnaseq-test-dataset', description, include the first row as header, and upload the CSV file provided in this repository. This CSV file specifies the paths to 7 small FASTQ files for a sub-sampled Yeast RNAseq dataset.

Notice the location of the files point to a path on S3. This could also be a path to a shared filesystem if using HPC. By providing the path to the files, Nextflow will stage the files into the task working directory. 



/// details | Note
        type: note   

Seqera Platform will not store any data used for analysis in pipelines. The Datasets should include locations of data that is stored elsewhere, on the user's infrastructure.
///