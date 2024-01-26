# Data Explorer

With Data Explorer, you can browse and interact with remote data repositories from organization workspaces in Seqera Platform. It supports AWS S3, Azure Blob Storage, and Google Cloud Storage repositories.

## 1. Data Explorer features

- View bucket details
  To view bucket details such as the cloud provider, bucket address, and credentials, select the information icon next to a bucket in the Data Explorer list.

- Search and filter buckets
  Search for buckets by name and region (e.g., region:eu-west-2) in the search field, and filter by provider.

- Hide buckets from list view
  Workspace maintainers can hide buckets from the Data Explorer list view. Select multiple buckets, then select Hide in the Data Explorer toolbar. To hide buckets individually, select Hide from the options menu of a bucket in the list.

The Data Explorer list filter defaults to Only visible. Select Only hidden or All from the filtering menu to view hidden buckets in the list. You can Unhide a bucket from its options menu in the list view.

- View bucket contents
  Select a bucket name from the Data Explorer list to view the contents of that bucket. From the View cloud bucket page, you can browse directories and search for objects by name in a particular directory. The file type, size, and path of objects are displayed in columns to the right of the object name. To view bucket details such as the cloud provider, bucket address, and credentials, select the information icon.

- Preview and download files
  From the View cloud bucket page, you can preview and download files. Select the download icon in the Actions column to download a file directly from the list view. Select a file to open a preview window that includes a Download button.

## 2. View Run outputs in Data Explorer

Data Explorer can be used to view the outputs of your pipelines.

From the View cloud bucket page, you can:

1. Preview and download files: Select the download icon in the 'Actions' column to download a file directly from the list view. Select a file to open a preview window that includes a Download button.
2. Copy bucket/object paths: Select the Path of an object on the cloud bucket page to copy its absolute path to the clipboard. Use these object paths to specify input data locations during pipeline launch, or add them to a dataset for pipeline input.

![Data Explorer bucket](docs/images/sp-cloud-data-explorer.gif)
