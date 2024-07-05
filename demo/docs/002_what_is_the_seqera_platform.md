## Introduction to the Seqera Platform

![Seqera biotech stack](assets/seqera-biotech-stack.png){ .right .image style="float: right; width: 50%; margin-left: 30px; margin-bottom: 20px;" }

The Seqera Platform is an intuitive centralized command post designed to make scientific analysis accessible at any scale. 

The Platform acts as a pane of glass, enabling users to effortlessly launch, manage, monitor, and collaborate on scalable Nextflow data analysis using their own computing resources and infrastructure. Researchers can focus on the science that matters rather than worrying about infrastructure engineering.

The Seqera Platform helps organizations:

- Launch, manage, and monitor portable Nextflow pipelines from anywhere in real-time
- Enable non-technical users to run pipelines via the intuitive Launchpad interface
- Easily provision and leverage cloud-based compute environments
- Collaborate and share pipelines and data securely among local and remote teams
- Easily access libraries of production-proven Nextflow community pipelines available from [nf-core](https://nf-co.re/)
- Automate complex tasks as part of broader enterprise processes

## Deployment methods

Seqera offers two deployment methods:

- **Seqera Cloud**: A version of the application available as a SaaS solution, hosted on Seqera's infrastructure.
- **Seqera Enterprise**: A lightweight, deployable version of the application that can be hosted on our customers' infrastructure.

## Core components

The Platform consists of three main architectural components: a backend container, a frontend container, and a database that stores all of the data required by the application. The frontend container communicates with the backend container and database via API calls. As a result, all features and activities available through the user interface can also be accessed programmatically via the Seqera Platform API. For more information, see the [Automation](./014_automation_on_the_seqera_platform.md) section later in the walkthrough.

This walkthrough will demonstrate the various features of the Seqera Platform which makes it easier to build, launch, and manage scalable data pipelines.