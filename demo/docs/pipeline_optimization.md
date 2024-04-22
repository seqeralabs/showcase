# Optimize the Pipeline

Seqera's pipeline optimization feature uses resource usage information from previous runs to minimize the resources used in your pipeline runs.

When a run completes successfully, an optimized profile is created. This profile consists of Nextflow configuration settings for each process and each resource directive (where applicable): cpus, memory, and time. The optimized setting for a given process and resource directive is based on the maximum use of that resource across all tasks in that process.

Navigate back to the Launchpad, click on the nf-core/rnaseq Pipeline added, and click on the 'Lightbulb' icon to view the optimized profile.

![Optimized configuration](assets/optimize-configuration.gif)

You can verify the optimized configuration of a given run by inspecting the resource usage plots for that run and these fields in the run's task table:

| Description  | Key                    |
| ------------ | ---------------------- |
| CPU usage    | `pcpu`                 |
| Memory usage | `peakRss`              |
| Runtime      | `start` and `complete` |
