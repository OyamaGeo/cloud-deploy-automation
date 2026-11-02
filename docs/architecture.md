# AWS CI/CD Architecture

## GlobalMart Deployment Architecture

The following diagram illustrates the intended CI/CD workflow for deploying the GlobalMart React application to Amazon EC2.

```mermaid
flowchart LR
    A["GitHub<br/>Source Repository"]
    B["AWS CodePipeline<br/>Workflow Orchestration"]
    C["AWS CodeBuild<br/>Install Dependencies<br/>Build React App"]
    D["AWS CodeDeploy<br/>Deployment Automation"]
    E["Amazon EC2<br/>GlobalMart Server"]
    F["GlobalMart<br/>React Application"]

    A --> B
    B --> C
    C --> D
    D --> E
    E --> F

    IAM["AWS IAM<br/>Roles and Permissions"]
    IAM -.-> B
    IAM -.-> C
    IAM -.-> D
    IAM -.-> E
```

## Deployment Workflow

1. Developers push application changes to GitHub.
2. GitHub triggers the CodePipeline source stage.
3. CodePipeline initiates the CodeBuild stage.
4. CodeBuild installs dependencies and generates the production build.
5. CodeDeploy manages the deployment to the EC2 instance.
6. The EC2 instance hosts the GlobalMart application.

## Deployment Target

- EC2 Instance: `GlobalMart-Server`
- CodePipeline: `GlobalMart-Pipeline`
- CodeDeploy Application: `GlobalMart-Catalog`
- Deployment Group: `GlobalMart-Production`

**Note:** The deployment workflow is still undergoing troubleshooting. The diagram represents the intended architecture, not a verified successful deployment.
