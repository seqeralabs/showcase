# Datasets

Most bioinformatics pipelines will require an input of some sort, typically a samplesheet where each row consists of a sample, the location of files for that sample (such as fastq files), and other sample details.

Datasets in Seqera Platform are CSV (comma-separated values) and TSV (tab-separated values) files stored in a workspace. They are used as inputs to pipelines to simplify data management, minimize user data-input errors, and facilitate reproducible workflows.

When running pipelines on the Cloud, this samplesheet has to be made available in Cloud storage or a remote location. Instead of doing this, we can upload a samplesheet we have locally, as a Dataset to the Platform to specify as input to our pipeline.

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
