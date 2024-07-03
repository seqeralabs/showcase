# Data Studios deep dive
This content is transcribed from a Data Studios demo presented by Rob Newman. 

## Data storage and data links
1. **Create a custom data link**:
      - Use the Data Explorer to add a specific data directory.
      - Select **Add cloud bucket** and specify the exact path to your data.
      - Note: Any data link added to a data studio session is read/write.

2. **Directory isolation**:
      - Once a directory is mounted to a data studio session, it cannot be accessed outside of that session.
      - This isolation prevents others from overwriting your results.
      - This is important ensure that only designated scientists or bioinformaticians can work with specific project directories.

3. **Fusion symlinks limitation**:
      - Fusion symlinks will not work outside the specified directory.

4. **Allowed buckets**:
      - Ensure the buckets you want to access through Data Studios are listed in the **Allowed buckets** section in the compute environment (CE).

## Compute environment resources

1. **Resource management**:
      - When you use a compute environment (CE) for both pipelines and Data Studios sessions, they will compete for resources.
      - To avoid stalling or losing work due to lack of CPU or memory, consider using a separate CE for Data Studios sessions.

2. **Large file handling**:
      - Staging large files (such as BAM files) can crash your session if there aren't enough resources.
      - Ensure your data studio has adequate resources before working with large datasets.

3. **Identifying data studio sessions**:
      - Each studio session has a name that can be identified in AWS Batch within the appropriate CE as the running job name.

## Data Studios infrastructure and mechanics

1. **Container Web Server**:
      - Each Data Studio container includes a web server called Tower Connect, which communicates telemetry data to and from Platform.
      - Custom containers may add a layer that includes this web server.

2. **Snapshots**:
      - Snapshots are created when you first create a session and each time you stop a studio.
      - These snapshots help in saving and restoring your work environment.

## Collaboration

1. **Monitoring activity**:
      - If a user is inactive for more than 5 minutes, their icon will disappear from the monitoring page, indicating they are not currently collaborating.

2. **Real-time collaboration**:
      - Only Jupyter and VS Code support real-time collaboration.
      - RStudio requires a Pro license for real-time collaboration — discussions with Posit for this capability are ongoing.

 