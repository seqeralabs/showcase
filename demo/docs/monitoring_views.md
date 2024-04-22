Workflow executions submitted in Seqera Platform can be monitored wherever you have an internet connection.

### 1. All runs view

The **All runs** page, accessed from the user menu, provides a comprehensive overview of the runs accessible to a user across the entire Seqera instance. The default view will be all organizations and workspaces you have access to. You can filter these by selecting the dropdown next to **View** or searching for a run. You can filter based on the following entries:

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

![All Runs view](assets/all_runs_view.gif)

### 2. Dashboard view

The Seqera Platform Dashboard, accessed from the user menu, provides an overview of runs in your personal and organization workspaces. The default view will be all organizations and workspaces you have acces to. You can filter for these by selecting the dropdown next to **View** and filter by time, including a custom date range up to 12 months.

You can also export this data in CSV format by clicking the **Export data** button.

![Dashboard view](./assets/dashboard_view.gif)
