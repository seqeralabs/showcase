
There are several ways to monitor run executions in Seqera Platform.

## 1. Workspace view

A full history of all pipeline executions within a given workspace can be accessed via the **Runs** tab:


/// details | Click to show animation
    type: example
    
![View runs](assets/sp-cloud-view-all-runs.gif)
///

## 2. All runs view

Access the **All runs** page from the user menu in the top right of the interface. This page provides a comprehensive overview of the runs across the entire Platform instance. The default view will be all organizations and workspaces accessible to the user. However, you can select visible workspaces from the dropdown next to **View**, and filter for a particular set of runs using any of the following fields:

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

Access the **Dashboard** from the user menu in the top right of the interface. This page provides an overview of the total runs across the Platform instance that are currently submitted, running, or have failed. The default view will be all organizations and workspaces accessible to the user. However, you can select visible workspaces from the dropdown next to **View**, and filter by time, including a custom date range up to 12 months. You can also select **Export data** to download a CSV file with all the available export data.


/// details | Click to show animation
    type: example

![Dashboard view](./assets/dashboard_view.gif)
///