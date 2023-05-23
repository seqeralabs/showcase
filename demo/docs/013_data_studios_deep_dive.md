# Data Studios Deep Dive
This content is transcribed from a Data Studios demo presented by Rob Newman. 

## Data Storage and Data Links
1. **Creating Custom Data Links**:
      - Use the Data Explorer to add a specific data directory.
      - Click on 'Add cloud bucket' and specify the exact path to your data.
      - Note: Any data link added to a Studio session is read/write.

2. **Directory Isolation**:
      - Once a directory is mounted to a Studio session, no one else can access it.
      - This isolation prevents others from overwriting your results.
      - Important for ensuring that only designated scientists or bioinformaticians can work with specific project directories.

3. **Fusion Symlinks Limitation**:
      - Fusion symlinks will not work outside the specified directory.

4. **Allowed Buckets**:
      - Ensure the buckets you want to access through Studios are listed in the 'Allowed Buckets' section in the Compute Environment (CE).

## Compute Environment Resources

1. **Resource Management**:
      - If using a Compute Environment (CE) for both pipelines and Studio sessions, be aware they will compete for resources.
      - To avoid stalling or losing work due to lack of CPU or memory, consider using a separate CE for Studio sessions.

2. **Handling Large Files**:
      - Staging large files (e.g., BAM files) can crash your session if there aren't enough resources.
      - Ensure your Studio has adequate resources before working with large datasets.

3. **Identifying Studio Sessions**:
      - Each Studio session has a name, which can be identified in AWS Batch within the appropriate CE as the running job name.

## Data Studios Infrastructure and Mechanics

1. **Container Web Server**:
      - Each Data Studio container includes a web server called Tower Connect, which communicates telemetry data to/from the Platform.
      - Custom containers may add a layer that includes this web server.

2. **Snapshots**:
      - Snapshots are created when you first create a session and each time you stop a studio.
      - These snapshots help in saving and restoring your work environment.

## Collaboration

1. **Monitoring Activity**:
      - If a user is inactive for more than 5 minutes, their icon will disappear from the monitoring page, indicating they are not currently collaborating.

2. **Real-Time Collaboration**:
      - Only Jupyter and VS Code support real-time collaboration.
      - RStudio requires a Pro license for real-time collaboration, and discussions with Posit for this capability are ongoing.

 