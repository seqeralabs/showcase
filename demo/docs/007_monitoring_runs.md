
There are several ways to monitor run executions within the Seqera Platform.

## 1. Workspace view

A full history of all pipelines executions within a given Workspace can be accessed via the Runs tab:


/// details | Click to show animation
    type: example
    
![Viewing Runs](assets/sp-cloud-view-all-runs.gif)
///

## 2. All runs view

The **All runs** page can be accessed from the user menu on the top right of the interface. This page provides a comprehensive overview of the runs across the entire Platform instance. The default view will be all Organizations and Workspaces accessible by a given user. However, you can select the visible Workspaces by clicking on the dropdown next to **View**, and filter for a particular set of runs using any of the following fields:

- `status`
- `label`
- `workflowId`
- `runName`
- `username`
- `projectName`
- `after: YYYY-MM-DD`
- `before: YYYY-MM-DD`
- `sessionId`
- `is:starred`

For example:

```
rnaseq username:johndoe status:succeeded after:2024-01-01
```


/// details | Click to show animation
    type: example

![All Runs view](assets/all_runs_view.gif)
///

## 3. Dashboard view

The **Dashboard** page can be accessed from the user menu on the top right of the interface. This page provides an overview of the total runs that are currently submitted, running, or have failed. This page provides a comprehensive overview of the runs across the entire Platform instance. The default view will be all Organizations and Workspaces accessible by a given user. However, you can select the visible Workspaces by clicking on the dropdown next to **View**, and filter by time, including a custom date range up to 12 months. You can also export this data in CSV format by clicking the **Export data** button.


/// details | Click to show animation
    type: example

![Dashboard view](./assets/dashboard_view.gif)
///