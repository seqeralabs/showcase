## Data Studio setup

### Create a data studio

#### 1. Add a data studio {#hidden-heading}

To create a data studio, select **Add data studio** and select a template. Currently, templates for Jupyter, VS Code, and RStudio are available.


/// details | Click to show animation
    type: example

![Add a data studio](assets/create-data-studio.gif)
///

#### 2. Select a compute environment {#hidden-heading}

Currently, only AWS Batch is supported.

#### 3. Mount data using Data Explorer {#hidden-heading}
##### Create a data link
To enable access to data in a dtudio, create a custom data link pointing to the directory in the AWS S3 bucket where the results are saved. This will allow us to read and write only the data we need from cloud storage, from within our Studio.

Select the **Add cloud bucket** button in Data Explorer and specify the path to the output directory:

![Create data link](assets/create-a-data-link.png){ .center }

##### Mount the data link into the studio
Select data to mount into your data studio environment using the Fusion file system in Data Explorer. In the Data Explorer, you can select the newly created data link to mount.

This data will be available at `/workspace/data/<dataset>`.


/// details | Click to show animation
    type: example

![Mount data into studio](assets/mount-data-into-studio.gif)
///

#### 4. Resources for environment {#hidden-heading}

Enter a CPU or memory allocation for your data studio environment (optional). The default is 2 CPUs and 8192 MB of memory.

Then, select **Add**.

The data studio environment will be available in the Data Studios landing page with the status 'stopped'. Select the three dots and **Start** to begin running the studio.


/// details | Click to show animation
    type: example

![Start a studio](assets/start-studio.gif)
///


![Connect to a studio](assets/connect-to-studio.png){ .right .image}

### Connect to a data studio

To connect to a running data studio session, select the three dots next to the status message and choose **Connect**. A new browser tab will open, displaying the status of the data studio session. Select **Connect**.
<br>
<div style="clear: both;"></div>

### Collaborate in a data studio

Collaborators can also join a data studios session in your workspace. For example, to share the results of the nf-core/rnaseq pipeline, you can share a link by selecting the three dots next to the status message for the data studio you want to share, then select **Copy data studio URL**. Using this link, other authenticated users with the "Connect" role (at minimum) can access the session directly.
<div style="clear: both;"></div>

![Stop a studio session](assets/stop-a-studio.png){ .right .image}
### Stop a data studio

To stop a running session, select the three dots next to the status and select **Stop**. Any unsaved analyses or results will be lost.<br>
<div style="clear: both;"></div>

<br>



/// details | Advanced
    type: info    

For a more detailed use case of performing tertiary analysis with the results of the nf-core/rnaseq pipeline in an RStudio/RShiny app environment, take see [Tertiary analysis with Data Studios](./011_tertiary_analysis_data_studios.md).
///

## Checkpoints in Data Studios

When starting a data studio, a checkpoint gets created. This checkpoint allows you to restart a data studio with previously installed software and changes made to the root filesystem of the container. Please note, that if you stop a data studio and restart it, this will restart it from the latest checkpoint. To go back to a specific previous configuration of data studio session, please restart it from a checkpoint as highlighted in the screenshot below:

![alt text](assets/data-studio-checkpoints.png)

## More information

For a detailed explanation about specific concepts of Data Studios and the tools preinstalled in Data Studios images, see the [Seqera Platform docs](https://docs.seqera.io/platform/23.4.0/data/data-studios).

/// details | Advanced
    type: info    

For additional details on Data Studios based on a demonstration from Rob Newman, see [Data Studios deep dive](./013_data_studios_deep_dive.md).  
///
