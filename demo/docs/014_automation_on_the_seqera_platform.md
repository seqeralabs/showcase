Seqera Platform provides multiple methods of programmatic interaction allowing you to automate execution of pipelines, chain pipelines together, and integrate the Platform into third-party services of your choosing.

### 1. Seqera Platform API

The Seqera Platform public API is the lowest-level method of programmatic interaction. All features available on the user interface can be achieved through the API. 

The API can be used to trigger the Launch of pipelines based on a file event (i.e. upload of a file to a bucket) or completion of a previous run.

The API can be accessed from `https://api.cloud.seqera.io`.

The full list of endpoints is available in Seqera's OpenAPI schema found [here](https://cloud.seqera.io/openapi/index.html). The API requires an authentication token to be specified in every API request. This can be created in your user menu under **Your tokens**.


/// details | Click to show animation
    type: example

![Platform access token](./assets/generate-access-token.gif)
///

The token is only displayed once. Store your token in a secure place. Use this token to authenticate requests to the API.


/// details | Advanced
        type: info    

For an example of how to use the API to launch a pipeline, we can make the following request using cURL: 

    
    curl -X POST "https://api.cloud.seqera.io/workflow/launch?workspaceId=38659136604200" \
        -H "Accept: application/json" \
        -H "Authorization: Bearer <your_access_token>" \
        -H "Content-Type: application/json" \
        -H "Accept-Version:1" \
        -d '{
        "launch": {
            "computeEnvId": "hjE97A8TvD9PklUb0hwEJ",
            "runName": "first-time-pipeline-api-byname",
            "pipeline": "first-time-pipeline",
            "workDir": "s3://nf-ireland",
            "revision": "master"
        }
    }'
    
///


### 2. Seqera Platform CLI

For bioinformaticians and scientists more comfortable with the CLI, Seqera Platform also comes with a command line utility called `tw` to manage resources. 

The CLI provides an interface to launch pipelines, manage compute environments, retrieve run metadata and monitor runs on the Platform. It provides a Nextflow-like experience for bioinformaticians who prefer the CLI, allows you store Seqera resource configuration (i.e. pipelines, compute environments) as code. The CLI is built on top of the [Seqera Platform API](#1-seqera-platform-api) but offers is simpler to use than the API. For example, you can refer to resources by name instead of unique identifier.

![Seqera Platform CLI](./assets/platform-cli.png)

The `tw` CLI installation and usage details can be obtained from [this](https://github.com/seqeralabs/tower-cli/) Github repository.


/// details | Advanced
    type: info    

For example, to launch the hello pipeline using the CLI:

    tw launch hello --workspace seqeralabs/showcase
///

### 3. seqerakit

`seqerakit` is a Python wrapper for the Seqera Platform CLI which can be leveraged to automate the creation of all of the entities in Seqera Platform via YAML format configuration file. It can be used to automate creation of entities (i.e. Organization, Workspace to Pipelines and Launching) in one YAML.

The key features are:

- **Simple configuration**: All of the command-line options available when using the Seqera Platform CLI can be defined in simple YAML format.
- **Infrastructure as Code**: Enable users to manage and provision their infrastructure specifications.
- **Automation**: End-to-end creation of entities within Seqera Platform, all the way from adding an Organization to launching pipeline(s) within that Organization.

The `seqerakit` installation and usage details are available on [this](https://github.com/seqeralabs/seqera-kit/) Github repository.


/// details | Advanced
    type: info    

For example, to launch the hello pipeline using seqerakit, you can create a YAML file called `hello.yaml` as follows:

    launch:
    - name: "hello-world"
        url: "https://github.com/nextflow-io/hello"
        workspace: "seqeralabs/showcase"

Then run seqerakit with:

    $ seqerakit hello.yaml

///

## Resources
A common use-case for using the automation methods above is to automatically execute a pipeline as data arrives off a sequencer or integrating Seqera Platform into a broader customer facing application. For a step-by-step guide on setting up this kind of **Workflow Automation on Seqera Platform**, take a look at [this blog post](https://seqera.io/blog/workflow-automation/).

For examples on how to use the above methods for chaining workflows together, take a look at [this blog post](https://seqera.io/blog/automating-workflows-with-nextflow-and-tower/) on **Automating workflows with Seqera Platform**.