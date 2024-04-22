# Run and Task Details

## 1. General summary

On the Runs page, the General panel displays top-level information about a pipeline run:

- Unique workflow run ID
- Workflow run name
- Timestamp of pipeline start
- Project revision and Git commit ID
- Nextflow session ID
- Username of the launcher
- Work directory path

## 2. View details for a Task

Scroll down the Runs page and you will see:

- The progress of each Process in the pipeline
- Aggregated stats for the Run (i.e. total walltime, CPU hours)
- Workflow metrics (i.e. CPU efficiency, memory efficiency)
- Task details table for every task in the workflow

## 3. Task details window

Select a task in the task table to open the Task details dialog. The dialog has three tabs: About, Execution log and Data Explorer.

**About**

The About tab provides the following information:

1. **Name**: Process name and tag

2. **Command**: Task script, defined in the pipeline process

3. **Status**: Exit code, task status, attempts

4. **Work directory**: Directory where the task was executed

5. **Environment**: Environment variables that were supplied to the task

6. **Execution time**: Metrics for task submission, start, and completion time

7. **Resources requested**: Metrics for the resources requested by the task

8. **Resources used**: Metrics for the resources used by the task

![Task details window](assets/task-details.gif)

**Execution log**

The Execution log tab provides a real-time log of the selected task's execution. Task execution and other logs (such as stdout and stderr) are available for download from here, if still available in your compute environment.

## 4. Task details in Data Explorer

The Data Explorer tab allows you to view the log files and output files generated for each task in it's working directory within the Platform.

You can view, download, and retrieve the link for these intermediate files stored in the Cloud from the Explorer tab.

![Task data explorer](assets/sp-cloud-task-data-explorer.gif)
