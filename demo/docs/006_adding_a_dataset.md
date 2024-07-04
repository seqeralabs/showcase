# Datasets

Most bioinformatics pipelines require an input of some sort. This is typically a samplesheet where each row consists of a sample, the location of files for that sample (such as fastq files), and other sample details.

In the cloud, users may need to upload this samplesheet to a bucket or retrieve the path to this file on a shared filesystem to use it as pipeline input.

Instead, these samplesheets can be made easily accessible through the **Datasets** feature in Platform. Datasets allow users to upload a structued CSV (Comma-Separated Values) or TSV (Tab-Separated Values) file to a workspace. They are then used as inputs to pipelines to simplify data management, minimize user data-input errors, and facilitate reproducible workflows.

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

Download the nf-core/rnaseq [samplesheet_test.csv](samplesheet_test.csv) provided in this repository to your computer.

## 2. Add the Dataset

From the **Datasets** tab, select **Add Dataset**.

![Add a Dataset](assets/sp-cloud-add-a-dataset.gif)

Specify the following dataset details:

- A **Name** for the dataset, such as 'nf-core-rnaseq-test-dataset'
- A **Description**
- Select the **First row as header** option
- Select **Upload file** and browse to the CSV file downloaded from this repository. This CSV file specifies the paths to 7 small FASTQ files for a sub-sampled Yeast RNAseq dataset.

Notice the location of the files point to a path on S3. This could also be a path to a shared filesystem, if using an HPC compute environment. Using the path to the files, Nextflow will stage the files into the task working directory. 



/// details | Note
        type: note   

Seqera Platform will not store any data used for analysis in pipelines. The datasets must include locations of data that is stored elsewhere, on the user's infrastructure.
///